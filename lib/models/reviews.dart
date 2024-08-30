import 'package:autismart/const/const.dart';
import 'package:flutter/material.dart';

class ReviewModel {
  final String userName;
  final String imagePath;
  final String reviewBody;
  final double rating;
  final Color color;

  ReviewModel({
    required this.userName,
    required this.imagePath,
    required this.reviewBody,
    required this.rating,
    required this.color,
  });
}

List<ReviewModel> models = [
  ReviewModel(
      userName: 'SOHYLA DAHAB',
      imagePath: 'images/first_user.png',
      reviewBody:
          'The auti smart watch has\ngreatly improved my son’s \ndaily routine and social\ninteractions with everyone\naround him',
      rating: 5,
      color: green),
  ReviewModel(
      userName: 'MAMI ATEF',
      imagePath: 'images/men.png',
      reviewBody:
          'The auti smart watch has\ngreatly improved my son’s\ndaily routine and social\ninteractions with family,\nteachers and peers',
      rating: 5,
      color: blue),
  ReviewModel(
      userName: 'SAOU SAMIHA',
      imagePath: 'images/hijab.png',
      reviewBody:
          "The auti smart watch has\ngreatly improved my son’s\ndaily routine and social\ninteractions with friend",
      rating: 5,
      color: purpleAccent),
  ReviewModel(
      userName: "BENAJI AMIRA",
      imagePath: 'images/maman.png',
      reviewBody:
          'The auti smart watch has\ngreatly improved my daughter’s\ndaily routine and social\nninteractions',
      rating: 5,
      color: purple)
];
