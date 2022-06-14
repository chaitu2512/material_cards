import {button} from '../common/button'
import {CardModel,CardType,MediaIconPosition} from '../common/cardModel'
import {MaterialCard} from '../common/materialCard'
@Entry
@Component
struct Index {
  private model: CardModel =new CardModel('Title' , 'SubTitle')
  private subHead : CardModel = new CardModel('Title', 'Subtitle goes here')
  private album : CardModel = new CardModel('Breaking Podcast', 'Subtitle')
  private rightImage : CardModel = new CardModel('Play Relaxing Songs', 'Song Name')
  scroller: Scroller = new Scroller()
  aboutToAppear(){
    this.model.setButtons([new button.Model(false,'Item1','#ff7e3636', '#ff42d4aa',15,ButtonType.Normal,30,90),
                            new button.Model(false,'Item2','#ff7e3636', '#ff42d4aa',15,ButtonType.Capsule,30,90),
                            new button.Model(false,'Item3','#ff7e3636', '#ff42d4aa',15,ButtonType.Capsule,30,90),
                            new button.Model(false,'Item5','#ff7e3636', '#ff42d4aa',15,ButtonType.Capsule,30,90),
                            new button.Model(false,'Item4','#ff7e3636', '#ff42d4aa',15,ButtonType.Capsule,30,90)])
    this.model.setActions([new button.Model(false,'Action1','#ff7e3636', '#fff3bb45',15,ButtonType.Capsule,30,90),
                            new button.Model(false,'Action2','#ff7e3636', '#fff3bb45',15,ButtonType.Capsule,30,90),
                            new button.Model(false,'Action3','#ff7e3636', '#fff3bb45',15,ButtonType.Capsule,30,90),
                            new button.Model(false,'Action4','#ff7e3636', '#fff3bb45',15,ButtonType.Capsule,30,90),
                            new button.Model(false,'Action5','#ff7e3636', '#fff3bb45',15,ButtonType.Capsule,30,90),])
    this.model.setCardType(CardType.Elevated)
    this.model.setLeadingIcon($r('app.media.disneylogo'))
    this.model.setMediaIcon($r('app.media.brave'))
    this.model.setCardHeight(520)
    this.model.setShowDivider(true)
    this.model.setButtonHeader('Buttons')
    this.model.setSupportingText("Determined to make her own path in life, Princess Merida defies a custom that brings chaos to her kingdom. Granted one wish, Merida ")
    this.model.setShadowColor('#ffff009d')
    this.model.setShadowRadius(40)
    this.model.setMediaIconPosition(MediaIconPosition.Top)

    //Subhead
    this.subHead.setCardType(CardType.Outlined)
    this.subHead.setCardBorderWidth(3)
    this.subHead.setLeadingIcon($r('app.media.disneylogo'))
    this.subHead.setCardHeight(90)
    this.subHead.setCardWidth(300)
    //Outlined Card
    this.album.setMediaIconPosition(MediaIconPosition.Top)
    this.album.setCardType(CardType.Elevated)
    this.album.setCardHeight(250)
    this.album.setCardWidth(200)
    this.album.setMediaIconWidth(200)
    this.album.setMediaIconHeight(180)
    this.album.setMediaIcon($r('app.media.music'))
    this.album.setMediaIconHeight(140)
    this.album.setTitleFontSize(22)
    this.album.setCardBackGroundColor(Color.Yellow)
    //Right SidedCard
    this.rightImage.setMediaIconPosition(MediaIconPosition.Right)
    this.rightImage.setCardType(CardType.Elevated)
    this.rightImage.setCardHeight(180)
    this.rightImage.setCardWidth(300)
    this.rightImage.setMediaIconWidth(90)
    this.rightImage.setMediaIconHeight(90)
    this.rightImage.setMediaIcon($r('app.media.music'))
    this.rightImage.setShadowColor(Color.Black)
    this.rightImage.setShadowRadius(35)
    this.rightImage.setSubTitleFontSize(20)
    this.rightImage.setSubTitleFontWeight(FontWeight.Medium)
    this.rightImage.setActions([new button.Model(false,'Get Started',Color.White, Color.Black,15,ButtonType.Capsule,30,110),
                                new button.Model(true,'Song Details',Color.Black, Color.Green,15,ButtonType.Capsule,30,110)])

    //filled Card
  }

  build() {
    Scroll(this.scroller) {
      Column() {
        MaterialCard({
          model : this.model
        })
        Blank(40)
        MaterialCard({
          model : this.subHead
        })
        Blank(40)
        MaterialCard({
          model : this.album
        })
        Blank(40)
        MaterialCard({
          model : this.rightImage
        })
        Blank(40)
    }.width('100%')
    }
    .scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
    .scrollBarColor(Color.Gray).scrollBarWidth(30)
  }
}