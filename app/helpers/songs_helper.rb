module SongsHelper
  def artist_select(song)
    binding.pry
    label :song, :artist_name, "Artist Name"
    if !params[:artist_id] && params[:action] == "edit"
      collection_select :song, :artist_id, Artist.all, :id, :name
    elsif params[:artist_id] && params[:action] == "new"
      hidden_field_tag "song[artist_id]", song.artist_id
    else
      text_field :song, :artist_name
    end
  end
end
