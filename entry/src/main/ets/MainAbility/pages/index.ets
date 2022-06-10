
// @ts-ignore
//import {SubHead} from '../common/SubHead'
//import {SubHeadCard} from '../common/SubHeadCard'
import {Elevated} from '../common/Elevated'
import {ElevatedCard} from '../common/ElevatedCard'
import {button} from '../common/button'
@Entry
@Component
struct Index {
  model : Elevated.Model = new Elevated.Model()
//  model : SubHead.Model = new SubHead.Model()
  aboutToAppear(){
    this.model.buttonArray[0] = new button.Model(false,'Item1','#ff7e3636', '#ffd4ff61',10,ButtonType.Capsule,30,90)
    this.model.buttonArray[1] = new button.Model(false,'Item2', '#ffffffff', '#ff4e3f3f',10,ButtonType.Capsule,30,90)
    this.model.buttonArray[2] = new button.Model(false,'Item3','#ff7e3636','#ffa2ea82',10,ButtonType.Capsule,30,90)
    this.model.buttonArray[3] = new button.Model(false,'Item3','#ff7e3636','#ffa2ea82',10,ButtonType.Capsule,30,90)
    this.model.buttonArray[4] = new button.Model(false,'Item3', '#ffffdede', '#ff000000',10,ButtonType.Capsule,30,90)
    this.model.buttonArray[5] = new button.Model(false,'Item3','#ff7e3636','#ffa2ea82',10,ButtonType.Capsule,30,90)
    this.model.buttonArray[6] = new button.Model(false,'Item3','#ff7e3636','#ffa2ea82',10,ButtonType.Capsule,30,90)
    this.model.action2 = new button.Model(false,'Item1','#ff7e3636','#ffa2ea82',20)
    this.model.buttonArray[7] = new button.Model(false,'Item3','#ffffdede','#ff000000',10,ButtonType.Capsule,30,90)
    this.model.buttonArray[8] = new button.Model(false,'Item3','#ffffdede','#ff000000',10,ButtonType.Capsule,30,90)
  }
  build() {
      Column() {
         Column(){
            ElevatedCard({
              model : this.model
              })
         }.width('100%' )
    }.width('100%')
  }
}