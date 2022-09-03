import { Component, OnInit } from '@angular/core';
import { Subject } from 'rxjs';
import { ClientesService } from '../clientes.service';

@Component({
  selector: 'app-listar-clientes',
  templateUrl: './listar-clientes.component.html',
  styleUrls: ['./listar-clientes.component.css']
})
export class ListarClientesComponent implements OnInit {

  dtOptions: DataTables.Settings = {};
  dtTrigger: Subject<any> = new Subject<any>();

  txValor:string="";

  clientes: any[] = [];
  
  constructor(private service:ClientesService) { }

  /*
  addcliente()
  {
     this.clientes.push({tipo:"PERSONA",numero_documento:"12587458",nombres:"Luis"});
     //this.clientes=this.clientes;
     console.log(this.clientes)
  }
  removecliente()
  {
   this.clientes.splice(this.clientes.length-1,1);
  }
  */

  ngOnInit(): void {

    console.log("hola mundo cruel");
    this.dtOptions = {
      pagingType: 'full_numbers',
      pageLength: 10
    };

    this.service.getClientes().subscribe((response:any)=>{
    console.log(response.date);
    this.clientes=response.date;

    this.dtTrigger.next(null);

    });

   
  }

}
