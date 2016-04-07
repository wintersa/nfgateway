import {Component, Input} from 'angular2/core';

@Component({
  selector: '[myTr]',
  template: `<td *ngFor="#item of row">{{item}}</td>`
})
export class MyTrComponent {
  @Input('myTr') row;
}
@Component({
  selector: 'my-app',
  template: `{{title}}
  <table>
    <tr *ngFor="#line of data" [myTr]="line"></tr>
  </table>
  `
  directives: [MyTrComponent]
})
export class AppComponent {
  title = "Angular 2 - tr attribute selector";
  data = [ [1,2,3], [11, 12, 13] ];
  constructor() { console.clear(); }
}
