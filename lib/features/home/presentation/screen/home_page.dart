import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/presentation/bloc/home_bloc.dart';
import 'package:techx/features/home/presentation/widgets/list_featured.dart';
import 'package:techx/features/home/presentation/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc _bloc = getIt<HomeBloc>();
  List<ItemModel> featuredList = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc.add(
      const GetFeatured(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: SafeArea(
        child: Scaffold(
          body: _buildHome(),
        ),
      ),
    );
  }

  Widget _buildHome() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 46,
                          height: 46,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Image(
                              image: AssetImage('assets/github.png'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text("Welcome,\nMohamad"),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    HomeSearchBar(searchController: _searchController),
                    ListFeatured(state: state),
                  ],
                ),
              );
      },
    );
  }
}
