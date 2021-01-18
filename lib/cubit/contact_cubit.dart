import 'package:bloc/bloc.dart';
import 'package:contact/models/contactRepository.dart';
import 'package:meta/meta.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  final ContactRepository _contactRepository;

  ContactCubit(this._contactRepository) : super(ContactInitial());

  Future<void> getContact(
      String contactNames, String contactImages, String contactStatus) async {
    emit(ContactInitial());

    final contactNames = await _contactRepository.fetchContactName();
    final contactImages =
        await _contactRepository.fetchContactImage(contactNames.toString());
    final contactStatus = await _contactRepository.fetchContactStatus(
        contactNames.toString(), contactImages.toString());

    emit(ContactState.contactLoadSuccess(
        contactNames: contactNames,
        contactImages: contactImages,
        contactStatus: contactStatus));
  }
}
