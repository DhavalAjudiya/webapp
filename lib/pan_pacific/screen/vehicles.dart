import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:webapp/pan_pacific/theme/image.dart';
import 'package:webapp/pan_pacific/theme/responsive.dart';
import 'package:webapp/pan_pacific/widget/custom_text.dart';

class VihiclesScreen extends StatefulWidget {
  const VihiclesScreen({Key? key}) : super(key: key);

  @override
  State<VihiclesScreen> createState() => _VihiclesScreenState();
}

class _VihiclesScreenState extends State<VihiclesScreen> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ///   ------------------  Web ---------------------
              if (Responsive.isDesktop(context))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 651,
                      // width: 100.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Images.background),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: SizedBox(
                          width: 1100,

                          /// --- Header ----
                          child: _headerColumn(),
                        ),
                      ),
                    ),

                    /// --- companyLogo ----
                    _valuedAndCustomersRow(),
                    const SizedBox(height: 68),

                    /// --- vans & lorries Containers ----
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 1100,
                        child: Column(
                          children: [
                            /// --- Official leasing and trade-in partner ----

                            _officialLeasingAndTradePartner(),
                            const SizedBox(height: 27),

                            /// --- Official trade-in partner ----

                            _officialTradePartner(),
                            const SizedBox(height: 40),

                            /// ---Select  vans  ----
                            _selectVan(),

                            const SizedBox(height: 40),

                            /// ---Select  Truck  ----
                            _selectTruck(),
                            const SizedBox(height: 40),
                            const CText(
                              "Please note that the images of vehicles above are for illustration purposes only and",
                              fontSize: 16,
                              color: Color(0xff9e9e9e),
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.4,
                            ),
                            const SizedBox(height: 10),
                            const CText(
                              "only some of our short-term rental vehicles feature our custom decal design.",
                              fontSize: 16,
                              letterSpacing: 0.4,
                              color: Color(0xff9e9e9e),
                              fontWeight: FontWeight.w700,
                            ),
                            const SizedBox(height: 100),

                            /// ---------- Frequently Asked questions -------
                            const CText(
                              "Frequently Asked questions",
                              fontSize: 25,
                              letterSpacing: 0.4,
                              color: Color(0xff3c88bb),
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ///  ------- Frequently Asked questions---------
                                _askQuestion(
                                  "Do I need to pay a deposit?",
                                  "Deposits vary according to the duration of the lease and type of\n"
                                      "vehicle. Typically, for short term rentals, deposits range \$300 –\n"
                                      "\$500, and for longer-term rentals, deposits tend to range from \$800\n"
                                      "– 1 month of rental. We accept cash and credit card for deposit\n"
                                      "payments.",
                                ),
                                Container(
                                  // height: 50,
                                  width: 530,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 10,
                                        offset: Offset(1, 2),
                                      ),
                                    ],
                                  ),
                                  child: Theme(
                                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                    child: ExpansionTile(
                                      childrenPadding: EdgeInsets.symmetric(horizontal: 5),
                                      title: const CText(
                                        "When collecting, what documents will I need?",
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                      trailing: Icon(
                                        _customTileExpanded ? Icons.remove : Icons.add,
                                        color: Color(0xff3c88bb),
                                        size: 35,
                                      ),
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const CText(
                                              "You need to bring the following documents:",
                                              fontSize: 16,
                                              height: 1.5,
                                              letterSpacing: 0.5,
                                              color: Color(0xff444444),
                                            ),
                                            Row(
                                              children: const [
                                                Icon(Icons.circle, size: 10),
                                                SizedBox(width: 10),
                                                CText(
                                                  "NRIC",
                                                  fontSize: 15,
                                                  height: 1.5,
                                                  letterSpacing: 0.5,
                                                  color: Color(0xff444444),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: const [
                                                Icon(Icons.circle, size: 10),
                                                SizedBox(width: 10),
                                                CText(
                                                  "Driver’s Licence",
                                                  fontSize: 15,
                                                  height: 1.5,
                                                  letterSpacing: 0.5,
                                                  color: Color(0xff444444),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: const [
                                                Icon(Icons.circle, size: 10),
                                                SizedBox(width: 10),
                                                CText(
                                                  "ACRA (If required – when registering under a company)",
                                                  fontSize: 15,
                                                  height: 1.5,
                                                  letterSpacing: 0.5,
                                                  color: Color(0xff444444),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                          ],
                                        ),
                                      ],
                                      onExpansionChanged: (bool expanded) {
                                        setState(() => _customTileExpanded = expanded);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ///  ------- Frequently Asked questions---------
                                _askQuestion(
                                  "Do you allow rental for personal usage?",
                                  "Yes, we offer rental on vehicles for personal and company usage.",
                                ),
                                _askQuestion(
                                  "Can multiple people drive the vehicle?",
                                  "If the vehicle is registered under a company, yes, any employee with\n"
                                      "a valid driving license can drive the vehicle. However, for vehicles\n"
                                      "that are rented under an individual’s name, only that person isn"
                                      "allowed to drive.",
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ///  ------- Frequently Asked questions---------
                                _askQuestion(
                                  "What is the minimum lease period?",
                                  "24 Hours. For vehicles due outside office hours (Monday – Friday,\n"
                                      "9.30pm – 6.30pm), The rental period will include these days/hours.\n"
                                      "For rentals under 24 Hours, a full day fee will be charged.",
                                ),
                                _askQuestion(
                                  "How much do you charge for rental?",
                                  "We are usually below or at market rate, but we don’t show pricing\n"
                                      "because it can differ based on the length of the lease, any current\n"
                                      "promotions, and various other variables. If you get in touch we’ll be\n"
                                      "able to give you a no-obligation quote.",
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            RichText(
                              text: const TextSpan(
                                  text: 'Have more questions? just drop us an',
                                  style: TextStyle(
                                    color: Colors.black,
                                    height: 1.5,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: ' email',
                                        style: TextStyle(
                                          height: 1.5,
                                          color: Color(0xff3c88bb),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                        )),
                                    TextSpan(
                                        text: ' or',
                                        style: TextStyle(
                                          height: 1.5,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                        ))
                                  ]),
                            ),
                            RichText(
                              text: const TextSpan(
                                  text: 'give us a call',
                                  style: TextStyle(
                                    color: Colors.black,
                                    height: 1.5,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: ' +65 8482 3003',
                                        style: TextStyle(
                                          height: 1.5,
                                          color: Color(0xff3c88bb),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                        )),
                                  ]),
                            ),
                            const SizedBox(height: 120),
                          ],
                        ),
                      ),
                    ),
                  ],
                )

              ///   ------------------  Tablet ---------------------

              else if (Responsive.isTablet(context))
                Container(
                  height: 80.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Images.background),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.only(top: 3.h, left: 21.w),
                      //   child: Row(
                      //     children: [
                      //       Image.asset(Images.panPacific, height: 8.h),
                      //       _headerText("Home"),
                      //       _headerText("Vehicles"),
                      //       _headerText("Promotions"),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                )

              ///   ------------------  Mobile ---------------------

              else
                Container(
                  height: 80.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Images.background),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.only(top: 3.h, left: 21.w),
                      //   child: Row(
                      //     children: [
                      //       Image.asset(
                      //         Images.panPacific,
                      //         width: 20.w,
                      //       ),
                      //       _headerText("Home"),
                      //       _headerText("Vehicles"),
                      //       _headerText("Promotions"),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  ///    --------------  web   --------------
  _headerColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.panPacific,
              width: 200,
            ),
            const SizedBox(width: 270),
            // SizedBox(width: 14.w),
            _headerText("Home"),
            // SizedBox(width: 2.w),
            const SizedBox(width: 40),
            _headerText("Vehicles"),
            const SizedBox(width: 40),
            _headerText("Promotions"),
            const SizedBox(width: 40),
            _headerText("Servicing"),
            const SizedBox(width: 40),
            _headerText("About"),
            const SizedBox(width: 40),
            _headerText("Blog"),
            const SizedBox(width: 40),
            _headerText("Contact"),
          ],
        ),
        const SizedBox(height: 60),
        const CText(
          "Commercial Vehicle Leasing",
          fontSize: 50,
          color: Color(0xff3c88bb),
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
        const SizedBox(height: 30),
        CText(
          "Short and long term commercial vehicle leasing\n"
          "from one of the leading leasing companies\n"
          "in Singapore.",
          fontSize: 30,
          color: Colors.black.withOpacity(0.6),
          // fontWeight: FontWeight.w,
          letterSpacing: 1,
        ),
        const SizedBox(height: 30),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 165,
          decoration: BoxDecoration(
            color: Color(0xff3c88bb),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const CText(
            "Request Quote",
            fontSize: 14,
            color: Colors.white,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  /// --- companyLogo ----
  _valuedAndCustomersRow() {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Row(
              children: [
                Container(
                  width: 33.w,
                  height: 80,
                  color: Color(0xff3c88bb),
                  child: const Align(
                    alignment: Alignment(0.6, 0),
                    child: CText(
                      "Valued\nCustomers",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50.w,
                )
              ],
            ),
            Positioned(
              left: 30.w,
              // left: 575,
              child: ClipPath(
                clipper: MyCustomClipper1(),
                child: Container(
                  width: 1290.w,
                  height: 80,
                  color: Color(0xff173154),
                  child: Row(
                    children: [
                      SizedBox(width: 5.6.w),
                      Row(
                        children: [
                          _companyLogo(Images.aramex),
                          SizedBox(width: 1.3.w),
                          _companyLogo(Images.bosch),
                          SizedBox(width: 1.3.w),
                          _companyLogo(Images.cw),
                          SizedBox(width: 1.3.w),
                          _companyLogo(Images.smrt),
                          SizedBox(width: 1.3.w),
                          _companyLogo(Images.sp),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// --- Official leasing and trade-in partner ----
  _officialLeasingAndTradePartner() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                  text: 'Pan Pacific Van & Truck Leasing offer a selection of top quality',
                  style: TextStyle(
                    color: Colors.black,
                    height: 1.5,
                    // fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                        text: ' commercial vans & lorries',
                        style: TextStyle(
                          height: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ))
                  ]),
            ),
            const CText(
              "as part of our extensive rental fleet. With vehicles of all different sizes, shapes and of\n"
              "varying powers, you can select the perfect vehicle for your needs. All of our vehicles are",
              color: Colors.black,
              height: 1.5,

              // fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            RichText(
              text: const TextSpan(
                  text: 'well maintained, and we offer',
                  style: TextStyle(
                    height: 1.5,

                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  children: [
                    TextSpan(
                        text: ' short, mid and long term rental',
                        style: TextStyle(
                          height: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        )),
                    TextSpan(
                      text: ' options for both',
                      style: TextStyle(
                        color: Colors.black,
                        height: 1.5,

                        // fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ]),
            ),
            const CText(
              "individuals and companies.",
              color: Colors.black,
              height: 1.5,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ],
        ),
        const SizedBox(width: 135),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CText(
              "Official leasing and trade-in partner",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            const SizedBox(height: 20),
            Image.asset(Images.borneo),
          ],
        ),
      ],
    );
  }

  /// --- Official trade-in partner ----
  _officialTradePartner() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CText(
          "Vehicle images below are for representation only. We offer customisation services, and\n"
          "lorries can come in various configurations, such as tailgate, canopy and box. Please review\n"
          "our vehicles below for more information, and get in touch should you have any questions.",
          color: Colors.black,
          height: 1.5,
          // fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
        const SizedBox(width: 130),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CText(
              "Official trade-in partner",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            const SizedBox(height: 15),
            Image.asset(Images.tanchong, width: 80),
          ],
        ),
        const SizedBox(width: 95),
      ],
    );
  }

  /// ---Select  vans  ----
  _selectVan() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _selectVanContainer(
          "Toyota Hiace",
          "Diesel",
          "Cargo Van",
          Images.toyota,
        ),
        _selectVanContainer(
          "Nissan NV350",
          "Petrol/Diese",
          "Cargo Van",
          Images.nissan,
        ),
        _selectVanContainer(
          "Nissan NV200",
          "Petrol/Diese",
          "Light &\nCompact",
          Images.nissan200,
        ),
      ],
    );
  }

  /// ---Select  Truck  ----
  _selectTruck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _selectTruckContainer(
          "Toyota Dyna",
          "Diesel",
          "10ft Truck",
          "Manual",
          Images.toyotaT,
        ),
        _selectTruckContainer(
          "Hino 300 Series",
          "Diese",
          "14ft Truck",
          "Manual",
          Images.nissanT,
        ),
        _selectTruckContainer(
          "Nissan Cabstar",
          "Petrol/Diese",
          "10ft Truck",
          "Automatic /\nManual",
          Images.nissanT,
        ),
      ],
    );
  }

  ///  ------- Frequently Asked questions---------
  _askQuestion(
    String question,
    String answer,
  ) {
    return Container(
      // height: 50,
      width: 530,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.symmetric(horizontal: 5),
          title: CText(
            question,
            // 'Do I need to pay a deposit?',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
          trailing: Icon(
            _customTileExpanded ? Icons.remove : Icons.add,
            color: Color(0xff3c88bb),
            size: 35,
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 2),
                CText(
                  answer,
                  // "Deposits vary according to the duration of the lease and type of\n"
                  // "vehicle. Typically, for short term rentals, deposits range \$300 –\n"
                  // "\$500, and for longer-term rentals, deposits tend to range from \$800\n"
                  // "– 1 month of rental. We accept cash and credit card for deposit\n"
                  // "payments.",
                  fontSize: 16,
                  height: 1.5,
                  letterSpacing: 0.5,
                  color: const Color(0xff444444),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
      ),
    );
  }

  _headerText(
    String text,
  ) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontSize: 14,
        letterSpacing: 1,
      ),
    );
  }

  _companyLogo(String image) {
    return Image.asset(
      image,
    );
  }

  ///   -----------   tablet  -------------
  _requestButton() {
    return Container(
      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: CText(
          "Request Quote",
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _selectVanContainer(
    String vanName,
    String van,
    String vanType,
    String vanImage,
  ) {
    return Container(
      height: 425,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              vanImage,
            ),
            const SizedBox(height: 20),
            CText(
              vanName,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 0.8,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Icon(
                      CustomIcons.truck,
                      color: Color(0xff9e9e9e),
                    ),
                    SizedBox(height: 3),
                    CText(
                      vanType,
                      color: Color(0xff9e9e9e),
                      fontSize: 13,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      CustomIcons.gas_pump,
                      color: Color(0xff9e9e9e),
                    ),
                    SizedBox(height: 3),
                    CText(
                      van,
                      color: Color(0xff9e9e9e),
                      fontSize: 13,
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Icon(
                      CustomIcons.cogs,
                      color: Color(0xff9e9e9e),
                    ),
                    SizedBox(height: 3),
                    CText(
                      "Automatic /\nManul",
                      color: Color(0xff9e9e9e),
                      fontSize: 13,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              height: 50,
              // width: 165,
              decoration: BoxDecoration(
                color: Color(0xff3c88bb),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const CText(
                "Request Quote",
                fontSize: 14,
                color: Colors.white,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _selectTruckContainer(
    String vanName,
    String van,
    String vanType,
    String manual,
    String vanImage,
  ) {
    return Container(
      height: 450,
      width: 330,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              vanImage,
            ),
            const SizedBox(height: 20),
            CText(
              vanName,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 0.8,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Icon(
                      CustomIcons.truck,
                      color: Color(0xff9e9e9e),
                    ),
                    SizedBox(height: 3),
                    CText(
                      vanType,
                      color: Color(0xff9e9e9e),
                      fontSize: 13,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      CustomIcons.gas_pump,
                      color: Color(0xff9e9e9e),
                    ),
                    SizedBox(height: 3),
                    CText(
                      van,
                      color: Color(0xff9e9e9e),
                      fontSize: 13,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      CustomIcons.cogs,
                      color: Color(0xff9e9e9e),
                    ),
                    const SizedBox(height: 3),
                    CText(
                      manual,
                      color: const Color(0xff9e9e9e),
                      fontSize: 13,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            const CText(
              "Available in: Box / Canopy / Tailgate",
              color: const Color(0xff9e9e9e),
              fontSize: 13,
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              height: 50,
              // width: 165,
              decoration: BoxDecoration(
                color: Color(0xff3c88bb),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const CText(
                "Request Quote",
                fontSize: 14,
                color: Colors.white,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(size.width - 50, 0.0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0.0, size.height);
//
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper oldClipper) {
//     return false;
//   }
// }

class MyCustomClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 450, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
