// @ts-nocheck
import {button} from './button'
export namespace Elevated {
    export class Model {
        srcImagePath: string = undefined
        cardImageWidth :number = 300
        cardImageHeight : number =180
        cardImageMargin: number = 16
        cardImageBorderWidth : number = 3
        cardImageBorderColor : string ='#ff43f31d'
        cardImageType: string = 'middle'
        cardTitleImage: string = 'left'
        needOverLine : boolean = true
        needBorder: boolean = true
        borderWidth: number = 4
        borderColor: string = '#ffc86d6d'
        cardWidth: number = 344
        cardHeight: number = 700
        titleText: string = 'BRAVE'
        numberOfSubtitleButton = 6
        subText: string = 'Determined to make her own path in life, Princess Merida defies a custom that brings chaos to her kingdom. Granted one wish, Merida must rely on her bravery and her archery skills to undo a beastly curse.'
        subTextFontSize : number = 15
        secondaryTextFontSize : number = 15
        subTitleText :string = 'Subtitle'
        overLineText :string = 'ANIMATED MOVIE'
        secondaryText : string = 'A Walt-Disney Film'
        textFontSize: number = 25
        subTextFontSize: number = 15
        backGroundColor: string = '#708b54ba'
        borderRadius: number = 10
        bottomMargin: number = 20
        imagePosition: string = 'left'
        needAction1 : boolean =true
        needAction2 : boolean =true
        needSecondaryText : boolean =true
        needSubText : boolean = true
        action1: button.Model = undefined
        action2: button.Model = undefined
        needOver : boolean = true
        needSubTitle : boolean = true
        buttonArray : button.Model[] = []
    }
}
