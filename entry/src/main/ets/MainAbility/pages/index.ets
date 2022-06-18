import { button, CardModel, CardType, MediaIconPosition, MaterialCard } from '@ohos/material-card'

@Entry
@Component
struct Index {
  private model: CardModel = new CardModel('Title', 'SubTitle')
  private subHead: CardModel = new CardModel('Title', 'Subtitle goes here')
  private album: CardModel = new CardModel('Breaking Podcast', 'Size of Song')
  private rightImage: CardModel = new CardModel('Play Relaxing Songs', 'Song Name')
  private filledCard: CardModel = new CardModel('Movie Name', 'SubHead')
  scroller: Scroller = new Scroller()
  private text = ''

  private OnClick(button: button.Model) {
    console.log(button.getButtonText())
  }

  aboutToAppear() {
    this.model.setButtons([new button.Model('Button1', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100),
    new button.Model('Button2', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100),
    new button.Model('Button3', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100),
    new button.Model('Button4', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100),
    new button.Model('Button5', false, '#ffffffff', '#ff6e00a7', 15, ButtonType.Capsule, 35, 100)])
    this.model.setActions([new button.Model('Action1', false, '#ffffffff', '#ff008061', 15, ButtonType.Capsule, 30, 90),
    new button.Model('Action2', false, '#ffffffff', '#ff008061', 15, ButtonType.Capsule, 30, 90),
    new button.Model('Action3', false, '#ffffffff', '#ff008061', 15, ButtonType.Capsule, 30, 90)])
    this.model.setCardBackGroundColor('#f8ffa4a4')
    this.model.setTitleFontColor(Color.White)
    this.model.setSubTitleFontColor(Color.White)
    this.model.setCardType(CardType.Elevated)
    this.model.setLeadingIcon($r('app.media.disneylogo'))
    this.model.setMediaIcon($r('app.media.brave'))
    this.model.setCardHeight(520)
    this.model.setShowDivider(true)
    this.model.setButtonHeader('buttons')
    this.model.setSupportingText("Determined to make her own path in life, Princess Merida defies " +
    "a custom that brings chaos to her kingdom. Granted one wish, Merida ")
    this.model.setShadowRadius(50)
    this.model.setShadowColor('#b418070e')
    this.model.setBorderRadius(8)
    this.model.setSubTitleFontSize(20)
    this.model.setTitleFontSize(25)
    this.model.setTitleFontWeight(FontWeight.Bolder)
    this.model.setLeadingIconWidth(70)
    this.model.setButtonClick(this.OnClick)
    this.model.setActionClick(this.OnClick)
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
    this.album.setCardType(CardType.Outlined)
    this.album.setCardHeight(250)
    this.album.setCardWidth(200)
    this.album.setMediaIconWidth(200)
    this.album.setMediaIconHeight(180)
    this.album.setMediaIcon($r('app.media.music'))
    this.album.setMediaIconHeight(140)
    this.album.setTitleFontSize(22)
    this.album.setBorderRadius(4)
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
    this.rightImage.setActions([new button.Model('Get Started', false, Color.White, Color.Black, 15, ButtonType.Capsule, 30, 110),
    new button.Model('Song Details', true, Color.Black, Color.Green, 15, ButtonType.Capsule, 30, 110)])
    this.rightImage.setBorderRadius(4)
    this.rightImage.setButtonClick(this.OnClick)
    this.rightImage.setActionClick(this.OnClick)
    //elevated Card
    this.filledCard.setMediaIconPosition(MediaIconPosition.Right)
    this.filledCard.setCardHeight(180)
    this.filledCard.setCardWidth(300)
    this.filledCard.setMediaIconWidth(90)
    this.filledCard.setMediaIconHeight(90)
    this.filledCard.setMediaIcon($r('app.media.disneylogo'))
    this.filledCard.setSubTitleFontSize(20)
    this.filledCard.setSubTitleFontWeight(FontWeight.Medium)
    this.filledCard.setActions([new button.Model('Get Started', false, Color.Black, Color.White, 15, ButtonType.Capsule, 30, 110),
    new button.Model('Song Details', true, Color.Black, Color.Green, 15, ButtonType.Capsule, 30, 110)])
    this.filledCard.setBorderRadius(8)
    this.filledCard.setTitleFontColor(Color.White)
    this.filledCard.setSubTitleFontColor(Color.White)
    this.filledCard.setCardBackGroundColor('#ffea11bb')
    this.filledCard.setButtonClick(this.OnClick)
    this.filledCard.setActionClick(this.OnClick)
    //elevated card
  }

  build() {
    Scroll(this.scroller) {
      Column() {
        Blank(40)
        MaterialCard({
          model: this.model
        })
        Blank(40)
        MaterialCard({
          model: this.subHead
        })
        Blank(40)
        MaterialCard({
          model: this.album
        })
        Blank(40)
        MaterialCard({
          model: this.rightImage
        })
        Blank(40)
        MaterialCard({
          model: this.filledCard
        })
        Blank(40)
      }.width('100%')
    }
    .scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
    .scrollBarColor(Color.Gray).scrollBarWidth(30)
  }
}