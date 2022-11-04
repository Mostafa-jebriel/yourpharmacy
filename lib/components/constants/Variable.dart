import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:yourpharmacy/components/model/model.dart';
import 'package:yourpharmacy/components/widget/widget.dart';

Color black = Colors.black;
Color white = Colors.white;
Color dark = HexColor('2b2b2b');
List image = [
  'https://images.squarespace-cdn.com/content/v1/5a943503b40b9d58b1938792/1588132129163-K78DCLDR05H7NLXC08US/person-holding-baby-s-feet-2456327.jpg?format=1500w',
  'https://florida-academy.edu/wp-content/uploads/2021/02/hair-maintenance-maintainstyle-floridaacademy-2048x1367.jpg',
  'https://blog.hubspot.com/hubfs/become-medical-sales-rep.jpg',
  'https://cdn.accentuate.io/50794659886/5636700471342/man-smiling-1-v1591740432336.jpg?1100x64',
  'http://go4course.com/Content/app_images/Courses/5390987e-10af-411d-910a-07ec41649d52.jpeg',
];

List<FloatingNavbarItem> bottomItem = [
  FloatingNavbarItem(icon: Icons.home, title: 'Home'),
  FloatingNavbarItem(icon: Icons.category, title: 'Category'),
  FloatingNavbarItem(icon: Icons.search_rounded, title: 'Search'),
  FloatingNavbarItem(icon: Icons.people, title: 'Profile'),
];
List<Widget>CategoryList = [
  CategoryItem("Baby Care",
      'https://images.squarespace-cdn.com/content/v1/5a943503b40b9d58b1938792/1588132129163-K78DCLDR05H7NLXC08US/person-holding-baby-s-feet-2456327.jpg?format=1500w'),
  CategoryItem("Hair Care",
      'https://florida-academy.edu/wp-content/uploads/2021/02/hair-maintenance-maintainstyle-floridaacademy-2048x1367.jpg'),
  CategoryItem(
      "Medical", 'https://blog.hubspot.com/hubfs/become-medical-sales-rep.jpg'),
  CategoryItem("Medicine",
      'https://images.theconversation.com/files/256057/original/file-20190129-108364-17hlc1x.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip'),
  CategoryItem("Man Care",
      'https://cdn.accentuate.io/50794659886/5636700471342/man-smiling-1-v1591740432336.jpg?1100x645'),
  CategoryItem("Oral Care",
      'https://www.newagedentistryabq.com/wp-content/uploads/2019/04/smile-dental-2048x1362.jpg'),
  CategoryItem("Protection",
      'https://d2tm09s6lgn3z4.cloudfront.net/2021/01/1589961736_508_120535_surgicalmasks-770x435.jpg'),
  CategoryItem("Skin Care",
      'http://go4course.com/Content/app_images/Courses/5390987e-10af-411d-910a-07ec41649d52.jpeg'),
  CategoryItem("Woman Care",
      'https://cdn.vox-cdn.com/thumbor/fumOj4kE68vpSBICPHrsxZ9gxuo=/0x0:5600x3733/1200x800/filters:focal(1104x1056:2000x1952)/cdn.vox-cdn.com/uploads/chorus_image/image/58972407/GettyImages_748322785.0.jpg'),
  CategoryItem("home care",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg6kkH0llFv682lZpSzrWe_DBDr6G4qngAFfgtkB9ESyBJa0vrCzlV2FcGHoAoiJSlqzI&usqp=CAU'),
  CategoryItem("Baby Care",
      'https://images.squarespace-cdn.com/content/v1/5a943503b40b9d58b1938792/1588132129163-K78DCLDR05H7NLXC08US/person-holding-baby-s-feet-2456327.jpg?format=1500w'),
  CategoryItem("Hair Care",
      'https://florida-academy.edu/wp-content/uploads/2021/02/hair-maintenance-maintainstyle-floridaacademy-2048x1367.jpg'),
  CategoryItem(
      "Medical", 'https://blog.hubspot.com/hubfs/become-medical-sales-rep.jpg'),
  CategoryItem("Medicine",
      'https://images.theconversation.com/files/256057/original/file-20190129-108364-17hlc1x.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip'),
  CategoryItem("Man Care",
      'https://cdn.accentuate.io/50794659886/5636700471342/man-smiling-1-v1591740432336.jpg?1100x645'),
  CategoryItem("Oral Care",
      'https://www.newagedentistryabq.com/wp-content/uploads/2019/04/smile-dental-2048x1362.jpg'),
  CategoryItem("Protection",
      'https://d2tm09s6lgn3z4.cloudfront.net/2021/01/1589961736_508_120535_surgicalmasks-770x435.jpg'),
  CategoryItem("Skin Care",
      'http://go4course.com/Content/app_images/Courses/5390987e-10af-411d-910a-07ec41649d52.jpeg'),
  CategoryItem("Woman Care",
      'https://cdn.vox-cdn.com/thumbor/fumOj4kE68vpSBICPHrsxZ9gxuo=/0x0:5600x3733/1200x800/filters:focal(1104x1056:2000x1952)/cdn.vox-cdn.com/uploads/chorus_image/image/58972407/GettyImages_748322785.0.jpg'),
  CategoryItem("home care",
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg6kkH0llFv682lZpSzrWe_DBDr6G4qngAFfgtkB9ESyBJa0vrCzlV2FcGHoAoiJSlqzI&usqp=CAU'),
];

List<CategoryModel>CategoryCircle = [
  CategoryModel(title: 'Baby Care',
    image: 'https://images.squarespace-cdn.com/content/v1/5a943503b40b9d58b1938792/1588132129163-K78DCLDR05H7NLXC08US/person-holding-baby-s-feet-2456327.jpg?format=1500w',),
  CategoryModel(title: "Hair Care",
      image: 'https://florida-academy.edu/wp-content/uploads/2021/02/hair-maintenance-maintainstyle-floridaacademy-2048x1367.jpg'),
  CategoryModel(title: "Medical",
      image: 'https://blog.hubspot.com/hubfs/become-medical-sales-rep.jpg'),
  CategoryModel(title: "Medicine",
      image: 'https://images.theconversation.com/files/256057/original/file-20190129-108364-17hlc1x.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip'),
  CategoryModel(title: "Man Care",
      image: 'https://cdn.accentuate.io/50794659886/5636700471342/man-smiling-1-v1591740432336.jpg?1100x645'),
  CategoryModel(title: "Oral Care",
      image: 'https://www.newagedentistryabq.com/wp-content/uploads/2019/04/smile-dental-2048x1362.jpg'),
  CategoryModel(title: "Protection",
      image: 'https://d2tm09s6lgn3z4.cloudfront.net/2021/01/1589961736_508_120535_surgicalmasks-770x435.jpg'),
  CategoryModel(title: "Skin Care",
      image: 'http://go4course.com/Content/app_images/Courses/5390987e-10af-411d-910a-07ec41649d52.jpeg'),
  CategoryModel(title: "Woman Care",
      image: 'https://cdn.vox-cdn.com/thumbor/fumOj4kE68vpSBICPHrsxZ9gxuo=/0x0:5600x3733/1200x800/filters:focal(1104x1056:2000x1952)/cdn.vox-cdn.com/uploads/chorus_image/image/58972407/GettyImages_748322785.0.jpg'),
  CategoryModel(title: "home care",
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg6kkH0llFv682lZpSzrWe_DBDr6G4qngAFfgtkB9ESyBJa0vrCzlV2FcGHoAoiJSlqzI&usqp=CAU'),
];


List<Item>OffersList = [
  Item(
      name: 'panadol Joint',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%AC%D9%88%D9%8A%D9%86%D8%AA%D8%B3.jpg',
      offer: '45%',
      price: '35.00 EGP',
      priceA: '0',
      isF: true,
      isC:true
  ),
  Item(
      name: 'Panadol Advance',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%A3%D8%B2%D8%B1%D9%82.jpg',
      offer: '15%',
      price: '25.00 EGP',
      priceA: '35.00 EGP',
      isF: false,
      isC:false
  ),
  Item(
      name: 'Panadol Extra',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%A5%D9%83%D8%B3%D8%AA%D8%B1%D8%A7.jpg',
      offer: '20%',
      price: '10.00 EGP',
      priceA: '15.00 EGP',
      isF: true,
      isC:false
  ),
  Item(
      name: 'Panadol  Actifast',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%A3%D9%83%D8%AA%D9%8A%D9%81%D8%A7%D8%B3%D8%AA-1.jpg',
      offer: '20%',
      price: '55.00 EGP',
      priceA: '100.00 EGP',
      isF: false,
      isC:true
  ),
  Item(
      name: 'panadol Joint',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%AC%D9%88%D9%8A%D9%86%D8%AA%D8%B3.jpg',
      offer: '45%',
      price: '35.00 EGP',
      priceA: '150.00 EGP',
      isF: true,
      isC:true
  ),
  Item(
      name: 'Panadol Night',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D9%86%D8%A7%D9%8A%D8%AA.jpg',
      offer: '10%',
      price: '20.00 EGP',
      priceA: '12.00 EGP',
      isF: false,
      isC:false
  ),
  Item(
      name: 'Panadol Cold & Flu',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D9%83%D9%88%D9%84%D8%AF-%D8%A2%D9%86%D8%AF-%D9%81%D9%84%D9%88.jpg',
      offer: '12%',
      price: '11.00 EGP',
      priceA: '123.00 EGP',
      isF: false,
      isC:false
  ),
  Item(
      name: 'Panadol  Actifast',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%A3%D9%83%D8%AA%D9%8A%D9%81%D8%A7%D8%B3%D8%AA-1.jpg',
      offer: '20%',
      price: '55.00 EGP',
      priceA: '100.00 EGP',
      isF: false,
      isC:true
  ),
  Item(
      name: 'panadol Joint',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%AC%D9%88%D9%8A%D9%86%D8%AA%D8%B3.jpg',
      offer: '45%',
      price: '35.00 EGP',
      priceA: '150.00 EGP',
      isF: true,
      isC:true
  ),
  Item(
      name: 'Panadol Night',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D9%86%D8%A7%D9%8A%D8%AA.jpg',
      offer: '10%',
      price: '20.00 EGP',
      priceA: '12.00 EGP',
      isF: false,
      isC:false
  ),
  Item(
      name: 'Panadol Cold & Flu',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D9%83%D9%88%D9%84%D8%AF-%D8%A2%D9%86%D8%AF-%D9%81%D9%84%D9%88.jpg',
      offer: '12%',
      price: '11.00 EGP',
      priceA: '123.00 EGP',
      isF: false,
      isC:false
  ),
];
List<Item2>OffersList2= [
  Item2(
      name: 'Panadol Advance',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%A3%D8%B2%D8%B1%D9%82.jpg',
      price: '25.00 EGP',
      priceA: '35.00 EGP',
      isF: false,
      isC:false
  ),
  Item2(
      name: 'Panadol Extra',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%A5%D9%83%D8%B3%D8%AA%D8%B1%D8%A7.jpg',
      price: '10.00 EGP',
      priceA: '15.00 EGP',
      isF: true,
      isC:false
  ),
  Item2(
      name: 'Panadol  Actifast',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%A3%D9%83%D8%AA%D9%8A%D9%81%D8%A7%D8%B3%D8%AA-1.jpg',
      price: '55.00 EGP',
      priceA: '100.00 EGP',
      isF: false,
      isC:true
  ),
  Item2(
      name: 'panadol Joint',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%AC%D9%88%D9%8A%D9%86%D8%AA%D8%B3.jpg',
      price: '35.00 EGP',
      priceA: '150.00 EGP',
      isF: true,
      isC:true
  ),
  Item2(
      name: 'Panadol Night',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D9%86%D8%A7%D9%8A%D8%AA.jpg',
      price: '20.00 EGP',
      priceA: '12.00 EGP',
      isF: false,
      isC:false
  ),
  Item2(
      name: 'Panadol Cold & Flu',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D9%83%D9%88%D9%84%D8%AF-%D8%A2%D9%86%D8%AF-%D9%81%D9%84%D9%88.jpg',
      price: '11.00 EGP',
      priceA: '123.00 EGP',
      isF: false,
      isC:false
  ),
  Item2(
      name: 'Panadol  Actifast',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%A3%D9%83%D8%AA%D9%8A%D9%81%D8%A7%D8%B3%D8%AA-1.jpg',
      price: '55.00 EGP',
      priceA: '100.00 EGP',
      isF: false,
      isC:true
  ),
  Item2(
      name: 'panadol Joint',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D8%AC%D9%88%D9%8A%D9%86%D8%AA%D8%B3.jpg',
      price: '35.00 EGP',
      priceA: '150.00 EGP',
      isF: true,
      isC:true
  ),
  Item2(
      name: 'Panadol Night',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D9%86%D8%A7%D9%8A%D8%AA.jpg',
      price: '20.00 EGP',
      priceA: '12.00 EGP',
      isF: false,
      isC:false
  ),
  Item2(
      name: 'Panadol Cold & Flu',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D9%83%D9%88%D9%84%D8%AF-%D8%A2%D9%86%D8%AF-%D9%81%D9%84%D9%88.jpg',
      price: '11.00 EGP',
      priceA: '123.00 EGP',
      isF: false,
      isC:false
  ),
];
List<Item>NewList= [
  Item(
      name: 'Axe Gold',
      image: 'https://www.axe.com/content/dam/unilever/axe/saudi_arabia/pack_shot/8717163647400-1634326-png.png',
      price: '45.00 EGP',
      priceA: '55.00 EGP',
      offer: '12%',
      isF: false,
      isC:false
  ),
  Item(
      name: 'Nivea Deep',
      image: 'https://cdn.salla.sa/ndYgy/dPwPH2vUQkdctC2FeA2T5OKuShNEaHQa0t8wqfRk.jpg',
      price: '45.00 EGP',
      priceA: '55.00 EGP',
      offer: '12%',
      isF: false,
      isC:false
  ),
  Item(
      name: 'Nivea Black & White',
      image: 'https://cdn.salla.sa/Dldw/lFVOMk0awlb8XRonYC2gIzyJacRqo8j1CY6NHlFu.png',
      price: '45.00 EGP',
      priceA: '55.00 EGP',
      isF: true,
      offer: '12%',
      isC:false
  ),
  Item(
      name: 'Axe Gold',
      image: 'https://www.axe.com/content/dam/unilever/axe/saudi_arabia/pack_shot/8717163647400-1634326-png.png',
      price: '45.00 EGP',
      priceA: '55.00 EGP',
      isF: false,
      offer: '12%',
      isC:false
  ),
  Item(
      name: 'Nivea Deep',
      image: 'https://cdn.salla.sa/ndYgy/dPwPH2vUQkdctC2FeA2T5OKuShNEaHQa0t8wqfRk.jpg',
      price: '45.00 EGP',
      priceA: '55.00 EGP',
      offer: '12%',
      isF: false,
      isC:false
  ),
  Item(
      name: 'Nivea Black & White',
      image: 'https://cdn.salla.sa/Dldw/lFVOMk0awlb8XRonYC2gIzyJacRqo8j1CY6NHlFu.png',
      price: '45.00 EGP',
      priceA: '55.00 EGP',
      offer: '12%',
      isF: true,
      isC:false
  ),
  Item(
      name: 'Panadol Cold & Flu',
      image: 'https://www.almrsal.com/wp-content/uploads/2017/09/%D8%A8%D9%86%D8%A7%D8%AF%D9%88%D9%84-%D9%83%D9%88%D9%84%D8%AF-%D8%A2%D9%86%D8%AF-%D9%81%D9%84%D9%88.jpg',
      offer: '12%',
      price: '11.00 EGP',
      priceA: '123.00 EGP',
      isF: false,
      isC:false
  ),
];
