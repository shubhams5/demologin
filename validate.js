function validate() {

   if( document.myForm.fname.value == "" ) {
      alert( "Please provide your first name!" );
      document.myForm.fname.focus() ;
      return false;
   }
   if( document.myForm.lname.value == "" ) {
      alert( "Please provide your last name!" );
      document.myForm.lname.focus() ;
      return false;
   }
   if( document.myForm.email.value == "" ) {
      alert( "Please provide your Email!" );
      document.myForm.email.focus() ;
      return false;
   }
   if( document.myForm.userid.value == "" ) {
      alert( "Please provide Username!" );
      document.myForm.userid.focus() ;
      return false;
   }if( document.myForm.password.value == "" ) {
      alert( "Please provide Password" );
      document.myForm.password.focus() ;
      return false;
   }
   return( true );
}

function ValidateEmail(mail) 
{
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value))
  {
    return (true)
  }
    alert("You have entered an invalid email address!")
    return (false)
}