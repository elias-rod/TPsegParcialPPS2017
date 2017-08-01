import { LoginPage } from './../login/login';
import { usuario } from './../../clases/usuario';
import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';//FORMBUILDER CREA FORMS, FORMGROUP DEFINE UN FORMULARIO Y VALIDATORS CONTIENE VALIDACIONES PREDISEÑADAS
//import { NgModule } from '@angular/core';
import { NavController, AlertController, LoadingController, Loading, NavParams, ToastController } from 'ionic-angular';


import { AuthService } from '../../app/auth-service';


import { AngularFireAuth } from "angularfire2/auth";
import { FirebaseListObservable, AngularFireDatabase } from 'angularfire2/database';
import * as EmailValidator from "email-validator";


@Component({
  selector: 'page-registro',
  templateUrl: 'registro.html'
})
export class RegistroPage {
  loading: Loading;
  nombre: string = '';
  password: any = '';
  formLogin: FormGroup;
  mensajeError: string = '';
  errorFormLogin: boolean;
  stockData: any;
  user: FirebaseListObservable<any>;


  //firebase
  miUsuario = {} as usuario;

  constructor(public navCtrl: NavController, public navParams: NavParams, private auth: AuthService, private loadingCtrl: LoadingController,
    public formBuilder: FormBuilder, private alertCtrl: AlertController, private toast: ToastController, private AngularAuth: AngularFireAuth, public database: AngularFireDatabase) {


    this.user = this.database.list('/usuarios');

    this.errorFormLogin = false;
    this.formLogin = formBuilder.group({
      nombre: [this.nombre, Validators.compose([Validators.required, Validators.maxLength(30)])],
      password: [this.password, Validators.compose([Validators.required, Validators.maxLength(30)])]
    });

  }


  //firebase


  Register(miUsuario: usuario) {

    try {
      if (miUsuario.password.length >= 6 && EmailValidator.validate(miUsuario.email)) {
       const result = this.AngularAuth.auth.createUserWithEmailAndPassword(miUsuario.email, miUsuario.password);
 
        if (result) {

          this.user.push({
            name: miUsuario.email,
            password: miUsuario.password
          });  // asi se hace un insert en firebase*/
          
          this.toast.create({
            message: 'Usuario ' + miUsuario.email + ' fue creado Satisfactoriamente',
            duration: 3000
          }).present();

          this.navCtrl.push(LoginPage);
        }
        else
          this.showError("error registro", "por favor, intente nuevamente");
      }
      else {
        console.log("error");
        this.showError("contraseña o user incorrecto", "recuerde que debe ser un mail valido y una contraseña de al menos 6 caracteres");

      }

    }

    catch (e) {
      console.error(e);
    }

  };

  showError(titulo, texto) {

    let alert = this.alertCtrl.create({
      title: titulo,
      subTitle: texto,
      buttons: ['OK']
    });
    alert.present(prompt);
  };


}
