package com.johnsnowlabs.nlp.annotators.common

case class Conll2009Sentence(dependency: String, lemma: String, pos: String, deprel: String, head: Int,
                             sentence: Int, begin: Int, end: Int)