class Formatador {
  String formatarCpfCnpj(String valor) {
    if (valor.length > 12) {
      return _formatarCnpj(valor);
    } else {
      return _formatarCpf(valor);
    }
  }

  String _formatarCpf(valor) {
    return '999.999.999-99';
  }

// função privada
  String _formatarCnpj(valor) {
    return '99.999.999/9999-99';
  }
}
