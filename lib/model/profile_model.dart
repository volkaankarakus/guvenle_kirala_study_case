// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProfileModel {
  String? photoURL;
  String? gender;
  bool? isHavePetFriends;
  String? numberOfPetFriends;
  String? educationStatus;
  String? netMonthlySalary;
  bool? isHaveExtraIncome;
  String? currentRentAmount;
  String? desiredMinRentAmount;
  String? desiredMaxRentAmount;
  String? expressYourselfText;
  ProfileModel({
    this.photoURL,
    this.gender,
    this.isHavePetFriends,
    this.numberOfPetFriends,
    this.educationStatus,
    this.netMonthlySalary,
    this.isHaveExtraIncome,
    this.currentRentAmount,
    this.desiredMinRentAmount,
    this.desiredMaxRentAmount,
    this.expressYourselfText,
  });

  ProfileModel copyWith({
    String? photoURL,
    String? gender,
    bool? isHavePetFriends,
    String? numberOfPetFriends,
    String? educationStatus,
    String? netMonthlySalary,
    bool? isHaveExtraIncome,
    String? currentRentAmount,
    String? desiredMinRentAmount,
    String? desiredMaxRentAmount,
    String? expressYourselfText,
  }) {
    return ProfileModel(
      photoURL: photoURL ?? this.photoURL,
      gender: gender ?? this.gender,
      isHavePetFriends: isHavePetFriends ?? this.isHavePetFriends,
      numberOfPetFriends: numberOfPetFriends ?? this.numberOfPetFriends,
      educationStatus: educationStatus ?? this.educationStatus,
      netMonthlySalary: netMonthlySalary ?? this.netMonthlySalary,
      isHaveExtraIncome: isHaveExtraIncome ?? this.isHaveExtraIncome,
      currentRentAmount: currentRentAmount ?? this.currentRentAmount,
      desiredMinRentAmount: desiredMinRentAmount ?? this.desiredMinRentAmount,
      desiredMaxRentAmount: desiredMaxRentAmount ?? this.desiredMaxRentAmount,
      expressYourselfText: expressYourselfText ?? this.expressYourselfText,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photoURL': photoURL,
      'gender': gender,
      'isHavePetFriends': isHavePetFriends,
      'numberOfPetFriends': numberOfPetFriends,
      'educationStatus': educationStatus,
      'netMonthlySalary': netMonthlySalary,
      'isHaveExtraIncome': isHaveExtraIncome,
      'currentRentAmount': currentRentAmount,
      'desiredMinRentAmount': desiredMinRentAmount,
      'desiredMaxRentAmount': desiredMaxRentAmount,
      'expressYourselfText': expressYourselfText,
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      photoURL: map['photoURL'] != null ? map['photoURL'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      isHavePetFriends: map['isHavePetFriends'] != null ? map['isHavePetFriends'] as bool : null,
      numberOfPetFriends: map['numberOfPetFriends'] != null ? map['numberOfPetFriends'] as String : null,
      educationStatus: map['educationStatus'] != null ? map['educationStatus'] as String : null,
      netMonthlySalary: map['netMonthlySalary'] != null ? map['netMonthlySalary'] as String : null,
      isHaveExtraIncome: map['isHaveExtraIncome'] != null ? map['isHaveExtraIncome'] as bool : null,
      currentRentAmount: map['currentRentAmount'] != null ? map['currentRentAmount'] as String : null,
      desiredMinRentAmount: map['desiredMinRentAmount'] != null ? map['desiredMinRentAmount'] as String : null,
      desiredMaxRentAmount: map['desiredMaxRentAmount'] != null ? map['desiredMaxRentAmount'] as String : null,
      expressYourselfText: map['expressYourselfText'] != null ? map['expressYourselfText'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileModel.fromJson(String source) => ProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProfileModel(photoURL: $photoURL, gender: $gender, isHavePetFriends: $isHavePetFriends, numberOfPetFriends: $numberOfPetFriends, educationStatus: $educationStatus, netMonthlySalary: $netMonthlySalary, isHaveExtraIncome: $isHaveExtraIncome, currentRentAmount: $currentRentAmount, desiredMinRentAmount: $desiredMinRentAmount, desiredMaxRentAmount: $desiredMaxRentAmount, expressYourselfText: $expressYourselfText)';
  }

  @override
  bool operator ==(covariant ProfileModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.photoURL == photoURL &&
      other.gender == gender &&
      other.isHavePetFriends == isHavePetFriends &&
      other.numberOfPetFriends == numberOfPetFriends &&
      other.educationStatus == educationStatus &&
      other.netMonthlySalary == netMonthlySalary &&
      other.isHaveExtraIncome == isHaveExtraIncome &&
      other.currentRentAmount == currentRentAmount &&
      other.desiredMinRentAmount == desiredMinRentAmount &&
      other.desiredMaxRentAmount == desiredMaxRentAmount &&
      other.expressYourselfText == expressYourselfText;
  }

  @override
  int get hashCode {
    return photoURL.hashCode ^
      gender.hashCode ^
      isHavePetFriends.hashCode ^
      numberOfPetFriends.hashCode ^
      educationStatus.hashCode ^
      netMonthlySalary.hashCode ^
      isHaveExtraIncome.hashCode ^
      currentRentAmount.hashCode ^
      desiredMinRentAmount.hashCode ^
      desiredMaxRentAmount.hashCode ^
      expressYourselfText.hashCode;
  }
}
