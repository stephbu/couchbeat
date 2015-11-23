//: Playground - noun: a place where people can play

import AVFoundation

let utterance = AVSpeechUtterance(string:"Test")
utterance.pitchMultiplier = 1.3
utterance.rate = AVSpeechUtteranceMinimumSpeechRate * 1.5
let synth = AVSpeechSynthesizer()

let lang = AVSpeechSynthesisVoice.currentLanguageCode()
let voice = AVSpeechSynthesisVoice(language: lang)

synth.speakUtterance(utterance)






