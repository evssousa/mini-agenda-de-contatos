def limpar_tela
    if RUBY_PLATFORM =~ /win32|win64|\.net/
        system "cls"
    else
        system "clear"
    end
end