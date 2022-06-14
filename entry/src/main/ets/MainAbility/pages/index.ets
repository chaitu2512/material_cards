
// @ts-ignore
//import {SubHead} from '../common/SubHead'
//import {SubHeadCard} from '../common/SubHeadCard'
import {Elevated} from '../common/Elevated'
import {ElevatedCard} from '../common/ElevatedCard'
import {button} from '../common/button'
import {CardModel,CardType} from '../common/cardModel'
import {MaterialCard} from '../common/materialCard'
@Entry
@Component
struct Index {
  private model: CardModel =new CardModel('Title' , 'SubTitle')
  scroller: Scroller = new Scroller()
  private swiperController: SwiperController = new SwiperController()
  aboutToAppear(){
    this.model.setButtons(new button.Model(false,'Item1','#ff7e3636', '#ff42d4aa',10,ButtonType.Capsule,30,90),0)
    this.model.setButtons(new button.Model(false,'Item1','#ff7e3636', '#ff42d4aa',10,ButtonType.Capsule,30,90),1)
    this.model.setButtons(new button.Model(false,'Item1','#ff7e3636', '#ff42d4aa',10,ButtonType.Capsule,30,90),2)
    this.model.setButtons(new button.Model(false,'Item1','#ff7e3636', '#ff42d4aa',10,ButtonType.Capsule,30,90),3)
    this.model.setCardType(CardType.Elevated)
    this.model.setLeadingIcon('app.media.disneylogo')
    this.model.setMediaIcon('app.media.disneylogo')
    this.model.setCardHeight(500)
    this.model.setShowDivider(true)
    this.model.setButtonHeader('Buttons')
    this.model.setSupportingText("Determined to make her own path in life, Princess Merida defies a custom that brings chaos to her kingdom. Granted one wish, Merida ")
    this.model.setShadowColor('#ffd93298')
    this.model.setShadowRadius(40)
  }
  build() {
    Scroll(this.scroller) {
      Column() {
        Swiper(this.swiperController) {
         Column(){
             MaterialCard({
              model : this.model
              })
            }.width('100%' )
            Column() {
              MaterialCard({
                model: this.model
              })
            }.width('100%' )
         }.index(1)
        .autoPlay(true)
        .interval(4000)
        .indicator(true)
        .loop(false)
        .duration(1000)
        .vertical(false)
        .itemSpace(0)
    }.width('100%')
    }
    .scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
    .scrollBarColor(Color.Gray).scrollBarWidth(30)
  }
}