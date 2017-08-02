import { Component } from '@angular/core';
import { NavController, ToastController, LoadingController } from 'ionic-angular';
import { NativeAudio } from '@ionic-native/native-audio';
import { Vibration } from '@ionic-native/vibration';

import { TranslateService } from '@ngx-translate/core';

import {
 GoogleMaps,
 GoogleMap,
 GoogleMapsEvent,
 LatLng,
 CameraPosition,
 MarkerOptions,
 Marker
} from '@ionic-native/google-maps';

@Component({
  selector: 'page-localizacion',
  templateUrl: 'localizacion.html'
})


export class Localizacion {
  
  mostrar;
  spinner;
  map : GoogleMap;

  constructor(public navCtrl: NavController,
  public toastCtrl: ToastController,
  private nativeAudio: NativeAudio,
  public loadingCtrl: LoadingController,
  private vibration: Vibration,
  public translate: TranslateService,
  private googleMaps: GoogleMaps) {
    this.nativeAudio.preloadSimple('yay', 'assets/sounds/yay.wav');
    this.nativeAudio.preloadSimple('error', 'assets/sounds/error.mp3');
    this.mostrar = false;
    translate.get('Cargando...').subscribe(
      translatedText => {
        this.spinner = this.loadingCtrl.create({
          content: translatedText
        });
      }
    );
  }

  DesecharYCrearSpinner(){
    this.spinner.dismiss();
    this.translate.get('Cargando...').subscribe(
      translatedText => {
        this.spinner = this.loadingCtrl.create({
          content: translatedText
        });
      }
    );
  }

  ngAfterViewInit() {
    let element: HTMLElement = document.getElementById('map');
    this.map = this.googleMaps.create(element);
    this.spinner.present();
    this.map.one(GoogleMapsEvent.MAP_READY)
    .then(()=>{
      this.mostrar = true;
      this.DesecharYCrearSpinner();
    });
  }

  ubicarPosicion(lat, lng){
    let latLng = new LatLng(lat, lng);
    this.map.clear();
    let position: CameraPosition = {
      target: latLng,
      zoom: 3,
      tilt: 0
    }
    this.map.moveCamera(position);
    let markerOptions: MarkerOptions = {
      position: latLng
    };

    this.spinner.present();
    let marker = this.map.addMarker(markerOptions)
    .then((marker: Marker) => {
      marker.showInfoWindow();
      this.DesecharYCrearSpinner();
    });
  }
}