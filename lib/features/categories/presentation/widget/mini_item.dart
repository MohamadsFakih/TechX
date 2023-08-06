import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/common/presentation/bloc/user/user_bloc.dart';
import 'package:techx/features/detailed/presentation/screen/detailed_screen.dart';

class MiniItem extends StatefulWidget {
  const MiniItem({
    super.key,
    required this.itemEntity,
    required this.type,
    required this.liked,
    this.showHeart = true,
    required this.id,
  });

  final MiniItemEntity itemEntity;
  final String type;
  final bool liked;
  final bool showHeart;
  final String id;

  @override
  State<MiniItem> createState() => _MiniItemState();
}

class _MiniItemState extends State<MiniItem> {
  /// The instance of [UserBloc]
  final UserBloc _userBloc = getIt<UserBloc>();

  /// To check if the item is liked or not
  final ValueNotifier<bool> _liked = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _liked.value = widget.liked;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _userBloc,
      child: _buildCard(context),
    );
  }

  Card _buildCard(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  DetailedScreen(
                miniItemEntity: widget.itemEntity,
                id: widget.id,
              ),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              transitionDuration: const Duration(milliseconds: 600),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: miniItemImageColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )),
              child: Column(
                children: [
                  if (widget.showHeart)
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          _userBloc.add(
                            AddLike(widget.itemEntity, widget.type),
                          );
                          _liked.value = !_liked.value;
                        },
                        child: ValueListenableBuilder(
                          valueListenable: _liked,
                          builder:
                              (BuildContext context, value, Widget? child) {
                            return Icon(
                              !_liked.value
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              color: redTypeColor,
                            )
                                .animate(
                                  target: _liked.value ? 0 : 1,
                                )
                                .shake()
                                .scale(
                                  begin: const Offset(0.9, 0.9),
                                  end: const Offset(1.2, 1.2),
                                )
                                .then()
                                .scale(
                                  begin: const Offset(1.2, 1.2),
                                  end: const Offset(0.9, 0.9),
                                )
                                .shimmer()
                                .toggle(
                                  builder: (
                                    context,
                                    value,
                                    child,
                                  ) =>
                                      child,
                                );
                          },
                        ),
                      ),
                    ),
                  Hero(
                    tag: widget.itemEntity.image,
                    child: CachedNetworkImage(
                      imageUrl: widget.itemEntity.image,
                      fit: BoxFit.fill,
                      placeholder: (context, url) => const Image(
                          image: AssetImage("assets/images/placeholder.jpg")),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.itemEntity.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "\$${widget.itemEntity.price}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
