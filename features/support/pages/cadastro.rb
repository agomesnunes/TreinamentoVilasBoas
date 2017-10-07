#Class Cadastro
class Cadastro 
    include Capybara::DSL
    def valido(arg1)
        email_valido
        senha_valida
        confirma_senha_valida
        nome
        sexo
        cpf_valido
        dt_nasc_valido
        phone_number
        cell_phone
        address_type(arg1)
        cep_valido
        num_valido
        complemento_valido
        referencia_valido
        btn_cadastrar
    end

    def email_valido
        find("*[name='email']").set(FFaker::Internet.email)
    end

    def senha_valida
        @password = (FFaker::Internet.password)
        find("input[name='password']").set(@password)
    end

    def confirma_senha_valida
        find("input[name='password_repeat']").set(@password)
    end

    def nome
        find("input[name='name']").set(FFaker::Name.name)
    end

    def sexo
        find("label[for='gender_male']").click
    end

    def cpf_valido
        find("input[name='cpf']").set(FFaker::IdentificationBR.cpf)
    end

    def dt_nasc_valido
        find("input[name='birthday']").set("01/01/1999")
    end

    def phone_number
        find("input[name='tel']").set(FFaker::PhoneNumberBR.phone_number)
    end

    def cell_phone
        find("input[name='cel']").set(FFaker::PhoneNumberBR.mobile_phone_number)    
    end

    def checkbox_opt_receiveSMS
        assert_selector(".btn.btn-success")
        find("label[for='checkbox_opt_receiveSMS']").click
    end

    def address_type(arg1)
        select(arg1,from:'address_type')
    end

    def cep_valido
        find("input[name='cep']").set('03603000')
    end

    def num_valido
        find("input[name='number']").set('1000')
    end

    def complemento_valido
        find("input[name='complement']").set('Casa2')
    end

    def referencia_valido
        find("input[name='reference']").set('PostoBR')
    end

    def btn_cadastrar
        find(".btn.btn-success").click
    end
end