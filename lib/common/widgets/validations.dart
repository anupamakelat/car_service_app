class validations{
   String? nameValidator(
    String? value,
    String ? emptymsg,String ? faildmsg
  ){
    final trimmedvalue = value?.trim();

    if(trimmedvalue == null || trimmedvalue.isEmpty){
      return emptymsg;
    }
    final RegExp nameRegExp = RegExp(r'^[a-zA-Z ]+$');

    if(!nameRegExp.hasMatch(trimmedvalue)){
      return faildmsg;
    }
    return null;
  }

}