class TheOtherClass:
    SOMETHING_USELESS = ["a", "b", "c"]

    def string_contains_some_letter(self, string_to_check):
        for letter in ["a", "b", "c"]:
            if letter in string_to_check:
                return True
        return False
