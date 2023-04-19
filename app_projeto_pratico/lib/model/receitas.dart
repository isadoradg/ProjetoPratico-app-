class Receitas {
  
  String receita;
  String ingredientes;
  String modoPreparo;

  Receitas(
    this.receita,
    this.ingredientes,
    this.modoPreparo,    
  );

  // Método para pegar as informações desses países
  factory Receitas.fromJson(Map<String, dynamic> j) {
    return Receitas(
        j['receita'],
        j['ingredientes'],
        j['modoPreparo'],
    );
  }
}






