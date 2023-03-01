// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CustomElevatedButtonModel {
  final String textString;
  bool isSelected;
  CustomElevatedButtonModel({
    required this.textString,
    this.isSelected = false,
  });

  

  CustomElevatedButtonModel copyWith({
    String? textString,
    bool? isSelected,
  }) {
    return CustomElevatedButtonModel(
      textString: textString ?? this.textString,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textString': textString,
      'isSelected': isSelected,
    };
  }

  factory CustomElevatedButtonModel.fromMap(Map<String, dynamic> map) {
    return CustomElevatedButtonModel(
      textString: map['textString'] as String,
      isSelected: map['isSelected'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomElevatedButtonModel.fromJson(String source) => CustomElevatedButtonModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CustomElevatedButtonModel(textString: $textString, isSelected: $isSelected)';

  @override
  bool operator ==(covariant CustomElevatedButtonModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.textString == textString &&
      other.isSelected == isSelected;
  }

  @override
  int get hashCode => textString.hashCode ^ isSelected.hashCode;
}


