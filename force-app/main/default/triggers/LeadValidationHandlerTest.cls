@isTest
public class LeadValidationHandlerTest {

    @isTest
    static void BloquearLeadInvalido() {

        Lead leadInvalido = new Lead(
            FirstName = '',
            LastName  = 'Jason',
            Phone     = '',
            Email     = 'lixia4397@uorak.com'
        );

        try {
            insert leadInvalido;
            System.assert(false, 'O Lead não deveria ser salvo');
        } catch (DmlException e) {
            System.assert(
                e.getMessage().contains('Preencha Nome, Sobrenome, Email e Telefone.'),
                'Mensagem de erro inesperada'
            );
        }
    }
}
