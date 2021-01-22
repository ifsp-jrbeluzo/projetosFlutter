import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: FormularioTransferencia(),
    )
  )
);

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class ListaTransferencia extends StatelessWidget{
    @override 
    Widget build(BuildContext context){
      return Scaffold(
              body: Column(
                children: [
                  ItemTransferencia(Transferencia(100.00,1235)),
                  ItemTransferencia(Transferencia(100.00,1235)),
                ],
                ),
                floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.add),
                ),
                 appBar: AppBar(
                  title: Text("TransferênciasX"),
                ),
      );
    }
}

class ItemTransferencia extends StatelessWidget{
  final Transferencia transferencia;

   ItemTransferencia(this.transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text(this.transferencia.valor.toString()),
              subtitle: Text(this.transferencia.numeroConta.toString()),
            ),
          );
  }

}

class Transferencia{
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}