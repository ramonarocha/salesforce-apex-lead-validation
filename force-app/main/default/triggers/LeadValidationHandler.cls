public class LeadValidationHandler {

    public static void validateRequiredFields(List<Lead> leads) {

        for (Lead ld : leads) {

            if (
                String.isBlank(ld.FirstName) ||
                String.isBlank(ld.LastName)  ||
                String.isBlank(ld.Email)     ||
                String.isBlank(ld.Phone)
            ) {
                ld.addError('Preencha Nome, Sobrenome, Email e Telefone.');
            }
        }
    }
}
