part of 'contact_cubit.dart';

class ContactState {
  final List<String> contactNames;
  final List<String> contactImages;
  final List<String> contactStatus;

  const ContactState(
      {this.contactNames, this.contactImages, this.contactStatus});

  const ContactState.initial()
      : this(
          contactNames: const <String>[],
          contactImages: const <String>[],
          contactStatus: const <String>[],
        );

  const ContactState.contactLoadSuccess({
    @required List<String> contactNames,
    @required List<String> contactImages,
    @required List<String> contactStatus,
  }) : this(
          contactNames: contactNames,
          contactImages: contactImages,
          contactStatus: contactStatus,
        );

  // ContactState copyWith({
  //   List<String> contactNames,
  //   String brand,
  //   List<String> contactImages,
  //   String model,
  //   List<String> contactStatus,
  //   String year,
  // }) {
  //   return ContactState(
  //     contactNames: contactNames ?? this.contactNames,
  //     contactImages: contactImages ?? this.contactImages,
  //     contactStatus: contactStatus ?? this.contactStatus,
  //   );
  // }
}

class ContactInitial extends ContactState {
  const ContactInitial();
}
