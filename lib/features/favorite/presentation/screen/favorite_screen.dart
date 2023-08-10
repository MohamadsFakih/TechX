import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/common/presentation/widget/mini_item.dart';
import 'package:techx/features/common/presentation/widget/custom_app_bar.dart';
import 'package:techx/features/favorite/presentation/bloc/favorite_bloc.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key, required this.userId});

  final String userId;

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  /// The instance of [FavoriteBloc]
  final FavoriteBloc _favoriteBloc = getIt<FavoriteBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _favoriteBloc,
      child: Scaffold(
        appBar: CustomAppBar(
          text: "Favorites",
        ),
        body: _buildPadding(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _favoriteBloc.add(GetFavorites(
      widget.userId,
    ));
  }

  Widget _buildPadding() {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<FavoriteBloc, FavoriteState>(
              builder: (context, state) {
                return Expanded(
                  child: state.isLoading
                      ? const Center(
                          child: SpinKitFadingCircle(
                            color: Colors.black,
                            size: 50.0,
                          ),
                        )
                      : state.items.isEmpty
                          ? const Center(
                              child: Text("No Items Found!"),
                            )
                          : GridView.builder(
                              itemCount: state.items.length,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 0.6,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                              ),
                              itemBuilder: (context, pos) {
                                final MiniItemEntity itemEntity =
                                    state.items[pos];
                                final bool isLiked =
                                    itemEntity.likes.contains(widget.userId);
                                return MiniItem(
                                  itemEntity: itemEntity,
                                  type: '',
                                  liked: isLiked,
                                  showHeart: false,
                                  id: widget.userId,
                                  fromScreen: "favorites",
                                );
                              },
                            ).animate().scale(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
