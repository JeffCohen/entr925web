class ScrabbleController < ApplicationController

  SCORE = {
            "AEILNORSTU" => 1, "DG" => 2, "BCMP" => 3, "FHVWY" => 4,
            "K" => 5, "JX" => 8, "QZ" => 10
          }

  def score
    word = params[:word].to_s[0,7]
    score = 0

    word.each_char do |letter|
      letter.upcase!
      letter_category = SCORE.keys.detect { |key| key.index(letter) }
      score += SCORE[letter_category] if letter_category
    end

    respond_to do |format|
      format.html
      format.json { render json: { :word => word, :score => score } }
      format.xml { render xml: { :word => word, :score => score } }
    end
  end

end
