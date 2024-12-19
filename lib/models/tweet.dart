import 'package:json_annotation/json_annotation.dart';

part 'tweet.g.dart';

@JsonSerializable()
class Tweet {
  int? id;
  String? profile;
  int? created_date;
  String? author;
  String? message;

  Tweet(this.author, this.created_date, this.id, this.message, this.profile);

  factory Tweet.fromJson(Map<String, dynamic> json) => _$TweetFromJson(json);
}
