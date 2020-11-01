import 'dart:convert';

class TrendingModel {
    String name;
    String type;
    String description;
    double rating;
    double goodReviews;
    double totalScore;
    double satisfaction;
    bool isfavourite;
    String image;

    TrendingModel({
        this.name,
        this.type,
        this.description,
        this.rating,
        this.goodReviews,
        this.totalScore,
        this.satisfaction,
        this.isfavourite,
        this.image,
    });

    TrendingModel copyWith({
        String name,
        String type,
        String description,
        double rating,
        double goodReviews,
        double totalScore,
        double satisfaction,
        bool isfavourite,
        String image,
    }) => 
        TrendingModel(
            name: name ?? this.name,
            type: type ?? this.type,
            description: description ?? this.description,
            rating: rating ?? this.rating,
            goodReviews: goodReviews ?? this.goodReviews,
            totalScore: totalScore ?? this.totalScore,
            satisfaction: satisfaction ?? this.satisfaction,
            isfavourite: isfavourite ?? this.isfavourite,
            image: image ?? this.image,
        );

    factory TrendingModel.fromRawJson(String str) => TrendingModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TrendingModel.fromJson(Map<String, dynamic> json) => TrendingModel(
        name: json["name"] == null ? null : json["name"],
        type: json["type"] == null ? null : json["type"],
        description: json["description"] == null ? null : json["description"],
        rating: json["rating"] == null ? null : json["rating"].toDouble(),
        goodReviews: json["goodReviews"] == null ? null : json["goodReviews"].toDouble(),
        totalScore: json["totalScore"] == null ? null : json["totalScore"].toDouble(),
        satisfaction: json["satisfaction"] == null ? null : json["satisfaction"].toDouble(),
        isfavourite: json["isfavourite"] == null ? null : json["isfavourite"],
        image: json["image"] == null ? null : json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "type": type == null ? null : type,
        "description": description == null ? null : description,
        "rating": rating == null ? null : rating,
        "goodReviews": goodReviews == null ? null : goodReviews,
        "totalScore": totalScore == null ? null : totalScore,
        "satisfaction": satisfaction == null ? null : satisfaction,
        "isfavourite": isfavourite == null ? null : isfavourite,
        "image": image == null ? null : image,
    };
}
