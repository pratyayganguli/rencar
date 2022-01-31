package rencar.app;

class Validator {
	//String Validator, only has to be used for server side validation.

	protected boolean isEmptyString(String str) {
		return false;
	}

	protected boolean isFirstName(String firstName) {
		return false;
	}
	
	protected boolean isLastName(String lastName) {
		return false;
	}
	
	protected boolean isFullName(String name) {
		return false;
	}
	
	protected boolean validLength(int lowerLimit) {
		return false;
	}
	
	protected boolean validEmailId(String email) {
		return false;
	}
	
	protected boolean validPhoneNumber(String email) {
		return false;
	}

	protected boolean validZipCode(String email) {
		return false;
	}
	
}
