import { button } from './button'

export enum CardType {
  Normal,
  Outlined,
  Elevated
}

class Properties {
  private cardType: CardType = CardType.Normal
  private cardBorderWidth: number = 2
  private cardBorderColor: string | Color | ResourceColor = Color.Blue
  private borderRadius : number = 20
  private cardBackgroundColor: string | Color | ResourceColor = Color.White
  private shadowColor: string | Color | ResourceColor = Color.Grey
  private shadowRadius : number = 20

  setCardBorderWidth(cardBorderWidth : number) : Properties{
    this.cardBorderWidth= cardBorderWidth
    return this
  }
  getCardBorderWidth() : number{
    return this.cardBorderWidth
  }
  setCardType(cardType : CardType){
    this.cardType =cardType
    return this
  }
  getCardType() : CardType{
    return this.cardType
  }
  setCardBorderColor(cardBorderColor : string | Resource | Color) {
    this.cardBorderColor = cardBorderColor != null ? cardBorderColor : Color.Blue
    return this
  }
  getCardBorderColor() : string | Resource | Color{
    return this.cardBorderColor
  }
  setBorderRadius(borderRadius : number){
    this.borderRadius = borderRadius != null ? borderRadius : 20
    return this
  }
  getBorderRadius() : number {
    return this.borderRadius
  }
  setCardBackGroundColor(cardBackgroundColor : string | Resource | Color) {
    this.cardBackgroundColor = cardBackgroundColor != null ? cardBackgroundColor : Color.White
    return this
  }
  getCardBackgroundColor(): string | Resource | Color{
    return this.cardBackgroundColor
  }
  setShadowColor(shadowColor : string | Resource | Color){
    this.shadowColor = shadowColor != null ? shadowColor : Color.Grey
    return this
  }
  getShadowColor(){
    return this.shadowColor
  }
  setShadowRadius(shadowRadius : number){
    this.shadowRadius =shadowRadius != null ? shadowRadius : 25
    return this
  }
  getShadowRadius() : number{
    return this.shadowRadius
  }
}

export class CardModel extends Properties {
  private title: string | Resource = ""
  private subTitle: string | Resource = ""

  private cardHeight : number = 540
  private cardWidth : number = 300

  private leadingIcon: string | Resource = undefined
  private leadingIconWidth: number = 64
  private leadingIconHeight: number = 64

  private mediaIcon: string | Resource = undefined
  private mediaIconWidth: number = 300
  private mediaIconHeight: number = 144

  private supportingText: string | Resource = ""

  private showDivider: boolean = false

  private buttonHeader: string | Resource = ""
  private buttons: button.Model [] = []

  private actions: button.Model [] = []

  constructor(title: string | Resource, subTitle: string | Resource) {
    super()
    this.title = title
    this.subTitle = subTitle
  }
  getTitle() : string | Resource{
    return this.title
  }
  getSubTitle() : string | Resource{
    return this.subTitle
  }
  setCardHeight(cardHeight : number){
    this.cardHeight = cardHeight != null ? cardHeight : 540
    return this
  }
  getCardHeight() : number{
    return this.cardHeight
  }
  setCardWidth(cardWidth : number){
    this.cardWidth = cardWidth != null ? cardWidth : 300
    return this
  }
  getCardWidth() : number{
    return this.cardWidth
  }
  setLeadingIcon(leadingIcon : string | Resource ) : CardModel{
    this.leadingIcon = leadingIcon != null ? leadingIcon : undefined
    return this
  }
  getLeadingIcon() : string | Resource {
    return this.leadingIcon
  }
  setLeadingIconWidth(leadingIconWidth : number) : CardModel{
    this.leadingIconWidth = leadingIconWidth !=null ? leadingIconWidth : 64
    return this
  }
  getLeadingIconWidth() : number{
    return this.leadingIconWidth
  }
  setLeadingIconHeight(leadingIconHeight : number) : CardModel{
    this.leadingIconHeight = leadingIconHeight != null ? leadingIconHeight : 64
    return this
  }
  getLeadingIconHeight() : number{
    return this.leadingIconHeight
  }
  setMediaIcon(mediaIcon : string | Resource) : CardModel{
    this.mediaIcon = mediaIcon == null ? undefined : mediaIcon
    return this
  }
  getMediaIcon() : string | Resource{
    return this.mediaIcon
  }
  setMediaIconWidth(mediaIconWidth : number) : CardModel{
    this.mediaIconWidth = mediaIconWidth !=null ? mediaIconWidth : this.cardWidth
    return this
  }
  getMediaIconWidth() : number{
    return this.mediaIconWidth
  }
  setMediaIconHeight(mediaIconHeight : number) : CardModel{
    this.mediaIconHeight = mediaIconHeight != null ? mediaIconHeight : 120
    return this
  }
  getMediaIconHeight() : number{
    return this.mediaIconHeight
  }
  setSupportingText(supportingText : string | Resource) : CardModel{
    this.supportingText = supportingText ! = null ? supportingText : ""
    return this
  }
  getSupportingText() : string | Resource{
    return this.supportingText
  }
  setShowDivider(showDivider : boolean): CardModel{
    this.showDivider = showDivider != null ?? showDivider ; false
    return this
  }
  getShowDivider(): boolean{
    return this.showDivider
  }
  setButtonHeader(buttonHeader : string | Resource) : CardModel{
    this.buttonHeader = buttonHeader != null ? buttonHeader : ""
    return this
  }
  getButtonHeader() : string | Resource{
    return this.buttonHeader
  }
  setButtons(buttons : button.Model[]) : CardModel{
    this.buttons = buttons
    return this
  }
  getButtons() : button.Model[]{
    return this.buttons
  }
  setActions(actions : button.Model[])  : CardModel{
    this.actions = actions
    return this
  }
  getActions()  : button.Model[]{
    return this.actions
  }
}
