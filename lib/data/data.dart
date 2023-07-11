
import 'class.dart';

class Data {
  
  static List<Countries> countries=[
    Countries(id: '1', name: 'غذاهای افغانی', flag:'assets/afg.jpeg' ),
    Countries(id: '2', name: 'غذاهای ایرانی', flag:'assets/ir.jpg' ),
    Countries(id: '3', name: 'غذاهای هندی', flag: 'assets/ind.png'),
    Countries(id: '4', name: 'غذاهای ترکی', flag:'assets/tur.gif'),
  ];
  
  static List<Recipe> afghani = [
    Recipe(
        id: '1',
        name: 'قابلی',
        image:
        'https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '2',
        name: 'کیچیری',
        image:
        'https://images.unsplash.com/photo-1444418185997-1145401101e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1391&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '3',
        name: 'منتو',
        image:
        'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '4',
        name: 'آشک',
        image:
        'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
  ];

  static List<Recipe> irani = [
    Recipe(
        id: '1',
        name: 'قورمه سبزی',
        image:
        'https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '2',
        name: 'کشک بادمجون',
        image:
        'https://images.unsplash.com/photo-1444418185997-1145401101e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1391&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '3',
        name: 'حلیم',
        image:
        'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '4',
        name: 'جوجه',
        image:
        'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
  ];

  static List<Recipe> hindi = [
    Recipe(
        id: '1',
        name: 'کرایی',
        image:
        'https://cdn.parsine.com/files/fa/news/1399/9/24/1176169_957.jpg',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
'روغن زیتون: ۳ قاشق غذاخوری',
'پیاز ریز خرد شده: ۱ عدد',
'فلفل دلمه: نصف یک عدد',
'زنجبیل رنده شده: ۵ قاشق غذاخوری',
'سیر خرد شده: ۲ قاشق غذاخوری',
'ران مرغ بدون پوست و بدون استخوان: ۴ عدد',
'گوجه فرنگی خرد شده: ۱/۵ لیوان',
'زیره آسیاب شده: ۱ قاشق چایخوری',
'تخم گشنیز آسیاب شده: ۱ قاشق چایخوری',
'ادویه گرام ماسالا: ۱ قاشق چایخوری',
'پودر چیلی قرمز: ۱ قاشق غذاخوری',
'پودر زردچوبه: نصف قاشق مرباخوری',
'نمک: به مقدار لازم',
'گشنیز خرد شده: ۱/۴ لیوان '      ,
        ]
    ),
    Recipe(
        id: '2',
        name: 'بریانی',
        image:
        'https://images.unsplash.com/photo-1444418185997-1145401101e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1391&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '3',
        name: 'دال',
        image:
        'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '4',
        name: 'پانی پوری',
        image:
        'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
  ];

  static List<Recipe> turkey = [
    Recipe(
        id: '1',
        name: 'دونر کباب',
        image:
        'https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '2',
        name: 'لاهماجون',
        image:
        'https://images.unsplash.com/photo-1444418185997-1145401101e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1391&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '3',
        name: 'دلمه',
        image:
        'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
    Recipe(
        id: '4',
        name: 'بورک',
        image:
        'https://flightio.com/wp-asli/wp-content/uploads/2022/09/Borek.jpg',

        steps: [
          'Gather the ingredients.',
          'Pull a double shot of espresso into a cappuccino cup.',
          'Foam the milk to double its original volume.'
              'Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
          'Serve immediately.'
        ],
        ingredients: [
          '2 shots espresso (a double shot)',
          '4 ounces milk'
        ]),
  ];

}

