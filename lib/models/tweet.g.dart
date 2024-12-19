// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tweet _$TweetFromJson(Map<String, dynamic> json) => Tweet(
      json['author'] as String?,
      (json['created_date'] as num?)?.toInt(),
      (json['id'] as num?)?.toInt(),
      json['message'] as String?,
      json['profile'] as String?,
    );

Map<String, dynamic> _$TweetToJson(Tweet instance) => <String, dynamic>{
      'id': instance.id,
      'profile': instance.profile,
      'created_date': instance.created_date,
      'author': instance.author,
      'message': instance.message,
    };
