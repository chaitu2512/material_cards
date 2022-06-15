
import {button,CardModel,CardType,MediaIconPosition,MaterialCard} from '@ohos/material-card'

@Entry
@Component
struct Index {
  private model: CardModel =new CardModel('Title' , 'SubTitle')
  private subHead : CardModel = new CardModel('Title', 'Subtitle goes here')
  private album : CardModel = new CardModel('Breaking Podcast', 'Subtitle')
  private rightImage : CardModel = new CardModel('Play Relaxing Songs', 'Song Name')
  scroller: Scroller = new Scroller()
  aboutToAppear(){
    this.model.setButtons([new button.Model('Button1',false, '#ff242222', '#ffecc2ff', 15, ButtonType.Normal, 35, 100),
                            new button.Model('Button2',false, '#ff242222', '#ffecc2ff', 15, ButtonType.Capsule, 35, 100),
                            new button.Model('Button3',false, '#ff242222', '#ffecc2ff', 15, ButtonType.Capsule, 35, 100),
                            new button.Model('Button4',false, '#ff242222', '#ffecc2ff', 15, ButtonType.Capsule, 35, 100),
                             new button.Model('Button5',false, '#ff242222', '#ffecc2ff', 15, ButtonType.Capsule, 35, 100)])
    this.model.setActions([new button.Model('Action1',false, '#ff7e3636', '#fff3bb45', 15, ButtonType.Capsule, 30, 90),
                           new button.Model('Action2',false, '#ff7e3636', '#fff3bb45', 15, ButtonType.Capsule, 30, 90),
                           new button.Model('Action3',false, '#ff7e3636', '#fff3bb45', 15, ButtonType.Capsule, 30, 90),
                           new button.Model('Action4',false, '#ff7e3636', '#fff3bb45', 15, ButtonType.Capsule, 30, 90),
                            new button.Model('Action5',false, '#ff7e3636', '#fff3bb45', 15, ButtonType.Capsule, 30, 90),])
    this.model.setCardBackGroundColor('#ffffdef0')
    this.model.setCardType(CardType.Normal)
    this.model.setLeadingIcon($r('app.media.disneylogo'))
    this.model.setMediaIcon($r('app.media.brave'))
    this.model.setCardHeight(520)
    this.model.setShowDivider(true)
    this.model.setButtonHeader('buttons')
    this.model.setSupportingText("Determined to make her own path in life, Princess Merida defies " +
                                  "a custom that brings chaos to her kingdom. Granted one wish, Merida ")
    this.model.setShadowColor('#d0fa7fff')
    this.model.setShadowRadius(40)
    this.model.setBorderRadius(3)
    this.model.setMediaIconPosition(MediaIconPosition.Top)
    this.model.setSubTitleFontSize(20)
    this.model.setTitleFontSize(25)
    this.model.setTitleFontWeight(FontWeight.Bolder)
    //Subhead
    this.subHead.setCardType(CardType.Outlined)
    this.subHead.setCardBorderWidth(3)
    this.subHead.setLeadingIcon($r('app.media.disneylogo'))
    this.subHead.setCardHeight(90)
    this.subHead.setCardWidth(300)
    this.subHead.setCardBackGroundColor('#ffece5e5')
    this.subHead.setLeadingIconHeight(64)
    this.subHead.setLeadingIconWidth(64)
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
    this.rightImage.setActions([new button.Model('Get Started',false,Color.White, Color.Black,15,ButtonType.Capsule,30,110),
                                new button.Model('Song Details',true,Color.Black, Color.Green,15,ButtonType.Capsule,30,110)])

    //filled Card
  }

  build() {
    Scroll(this.scroller) {
      Column() {
//        Blank(40)
//        MaterialCard({
//          model : this.model
//        })
//        Blank(40)
//        MaterialCard({
//          model : this.subHead
//        })
//        Blank(40)
//        MaterialCard({
//          model : this.album
//        })
        Blank(40)
        MaterialCard({
          model : this.rightImage
        })
//        Blank(40)
    }.width('100%')
    }
    .scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
    .scrollBarColor(Color.Gray).scrollBarWidth(30)
  }
}