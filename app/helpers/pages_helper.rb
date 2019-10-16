module PagesHelper
    def twitter_parser tweet
        regex = %r{
          \b
          (
            (?: [a-z][\w-]+:
             (?: /{1,3} | [a-z0-9%] ) |
              www\d{0,3}[.] |
              [a-z0-9.\-]+[.][a-z]{2,4}/
            )
            (?:
             [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
            )+
            (?:
              \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
              [^\s`!()\[\]{};:'".,<>?«»“”‘’]
            )
          )
        }ix

        newTweet = tweet.gsub(regex) do |url|
          "<a href='#{url}' target='_blank'>#{url}</a>"
        end
        list = newTweet.split
        "<div class='card-header'>#{list[0,3].join(' ')}</div><div class='card-body'>#{list[3,list.length].join(' ')}</div>".html_safe
    end
end
