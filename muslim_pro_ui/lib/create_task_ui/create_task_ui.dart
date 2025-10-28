import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateTaskUi extends StatelessWidget {
  const CreateTaskUi({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Color(0xFF3D4953)),
        centerTitle: true,
        title: Text(
          "Create Task",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontFamily: 'poppins',
            color: Color(0xFF3D4953),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF4F4F4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
          child: Column(
            children: [
            
              TextField(
                decoration: InputDecoration(
                  hintText: "Title is here",
                  hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                     color: Color(0xFF9EA1A6),
                    fontWeight: FontWeight.w500,
                    ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 1.4),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Task Details",
                  hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(0xFFB0B3B8), // lighter gray color
                    fontFamily: 'roboto',
                    fontSize: 12,
                    fontWeight: FontWeight.w400, // lighter weight
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 61,
           
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('Text');
                        },
                        child: SvgPicture.asset(
                          'assets/images/Ttext.svg',
                          width: 22, // adjust size as needed
                          height: 22,
                        ),
                      ),
                      const SizedBox(width: 18),
                      GestureDetector(
                        onTap: () {
                          print('lists');
                        },
                        child: SvgPicture.asset(
                          'assets/images/bottom_list.svg',
                          width: 22,
                          height: 22,
                        ),
                      ),
                      const SizedBox(width: 18),
                      GestureDetector(
                        onTap: () {
                          print('Color');
                        },
                        child: Container(
                          width: 21,
                          height: 21,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFEAA8), // Fill color
                            shape: BoxShape.circle, // Circular shape
                            border: Border.all(
                              color: Color.fromARGB(
                                255,
                                180,
                                174,
                                155,
                              ), // Border color (same as fill)
                              width: 1, // Border thickness
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 18),
                      GestureDetector(
                        onTap: () {
                          print('Settings');
                        },
                        child: SvgPicture.asset(
                          'assets/images/settings.svg',
                          width: 22, // adjust size as needed
                          height: 22,
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          print('Create Task');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF36B084),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 14,
                          ),
                        ),
                        child: Text(
                          "Create Task",
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                color: Colors.white,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
