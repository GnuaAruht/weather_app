part of 'home_page.dart';

class HourlyForecastWidget extends StatelessWidget {
  const HourlyForecastWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Today',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const ForecastPage()));
                },
                child: Row(
                  children: const [
                    Text(
                      'Next 7 days',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                    Icon(CupertinoIcons.right_chevron)
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 132.0,
          child: ListView.separated(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 8.0,
                );
              },
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 0.54,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1.2),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            '12:00',
                          ),
                          Image.asset(
                            'images/50n.png',
                            width: 42.0,
                            height: 42.0,
                            fit: BoxFit.fill,
                          ),
                          const Text(
                            'Now',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
