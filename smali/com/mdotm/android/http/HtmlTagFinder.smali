.class public Lcom/mdotm/android/http/HtmlTagFinder;
.super Ljava/lang/Object;
.source "HtmlTagFinder.java"


# instance fields
.field anchorTagRegEx:Ljava/lang/String;

.field areaTagRegEx:Ljava/lang/String;

.field audioVideoSourceRegEx:Ljava/lang/String;

.field cssImageUrlPattern:Ljava/lang/String;

.field cssImageUrlTagEx:Ljava/lang/String;

.field embedTagRegEx:Ljava/lang/String;

.field formActionPattern:Ljava/lang/String;

.field formTagRegEx:Ljava/lang/String;

.field hrefPattern:Ljava/lang/String;

.field iFrameTagRegEx:Ljava/lang/String;

.field imgTagRegEx:Ljava/lang/String;

.field linkTagRegEx:Ljava/lang/String;

.field objectDataPattern:Ljava/lang/String;

.field objectTagRegEx:Ljava/lang/String;

.field scriptTagRegEx:Ljava/lang/String;

.field sourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/model/HtmlResourceModel;",
            ">;"
        }
    .end annotation
.end field

.field sourcePattern:Ljava/lang/String;

.field typePattern:Ljava/lang/String;

.field videoOpenTagRegEx:Ljava/lang/String;

.field videoPosterPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "<\\s*a\\s.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->anchorTagRegEx:Ljava/lang/String;

    .line 17
    const-string v0, "<\\s*[a|A][r|R][e|E][a|A]\\s.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->areaTagRegEx:Ljava/lang/String;

    .line 20
    const-string v0, "<\\s*[e|E][m|M][b|B][e|E][d|D]\\s.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->embedTagRegEx:Ljava/lang/String;

    .line 21
    const-string v0, "<\\s*[i|I][m|M][g|G]\\s*.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->imgTagRegEx:Ljava/lang/String;

    .line 22
    const-string v0, "<\\s*[l|L][i|I][n|N][k|K]\\s*.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->linkTagRegEx:Ljava/lang/String;

    .line 23
    const-string v0, "<\\s*[i|I][f|F][r|R][a|A][m|M][e|E]\\s*.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->iFrameTagRegEx:Ljava/lang/String;

    .line 24
    const-string v0, "<\\s*[o|O][b|B][j|J][e|E][c|C][t|T]\\s*.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->objectTagRegEx:Ljava/lang/String;

    .line 25
    const-string v0, "<\\s*[v|V][i|I][d|D][e|E][o|O]\\s*.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->videoOpenTagRegEx:Ljava/lang/String;

    .line 27
    const-string v0, "<\\s*[f|F][o|O][r|R][m|M]\\s.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->formTagRegEx:Ljava/lang/String;

    .line 28
    const-string v0, "<\\s*[s|S][o|O][u|U][r|R][c|C][e|E]\\s.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->audioVideoSourceRegEx:Ljava/lang/String;

    .line 29
    const-string v0, "<\\s*[s|S][c|C][r|R][i|I][p|P][t|T]\\s.*?>"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->scriptTagRegEx:Ljava/lang/String;

    .line 30
    const-string v0, "url\\s*\\(\'(.*?)\'\\)"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->cssImageUrlTagEx:Ljava/lang/String;

    .line 32
    const-string v0, "[p|P][o|O][s|S][t|T][e|E][r|R]\\s*=\\s*\\\"([^\\\"]+)\\\""

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->videoPosterPattern:Ljava/lang/String;

    .line 33
    const-string v0, "[s|S][r|R][c|C]\\s*=\\s*\\\"([^\\\"]+)\\\""

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->sourcePattern:Ljava/lang/String;

    .line 34
    const-string v0, "[h|H][r|R][e|E][f|F]\\s*=\\s*\\\"([^\\\"]+)\\\""

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->hrefPattern:Ljava/lang/String;

    .line 35
    const-string v0, "[a|A][c|C][t|T][i|I][o|O][n|N]\\s*=\\s*\\\"([^\\\"]+)\\\""

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->formActionPattern:Ljava/lang/String;

    .line 36
    const-string v0, "[d|D][a|A][t|T][a|A]\\s*=\\s*\\\"([^\\\"]+)\\\""

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->objectDataPattern:Ljava/lang/String;

    .line 37
    const-string v0, "url\\s*\\(\'(.*?)\'\\)"

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->cssImageUrlPattern:Ljava/lang/String;

    .line 38
    const-string v0, "[t|T][y|Y][p|P][e|E]\\s*=\\s*\\\"([^\\\"]+)\\\""

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->typePattern:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->sourceList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method

.method private findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "tagRegEx"
    .parameter "sourceRegEx"
    .parameter "htmlPageString"
    .parameter "action"

    .prologue
    .line 94
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 95
    .local v4, tagPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 96
    .local v3, tagMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_1

    .line 112
    return-void

    .line 97
    :cond_1
    const-string v6, "Tag found "

    invoke-static {p0, v6}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, tagString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Tag String "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v5, p2}, Lcom/mdotm/android/http/HtmlTagFinder;->getSourceValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, sourcelink:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/mdotm/android/http/HtmlTagFinder;->getResourceType(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, resourceType:I
    if-eqz v2, :cond_0

    .line 104
    new-instance v0, Lcom/mdotm/android/model/HtmlResourceModel;

    invoke-direct {v0}, Lcom/mdotm/android/model/HtmlResourceModel;-><init>()V

    .line 105
    .local v0, htmlResourceModel:Lcom/mdotm/android/model/HtmlResourceModel;
    invoke-virtual {v0, p4}, Lcom/mdotm/android/model/HtmlResourceModel;->setAction(I)V

    .line 106
    invoke-virtual {v0, v2}, Lcom/mdotm/android/model/HtmlResourceModel;->setOriginallink(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/HtmlResourceModel;->setresourceType(I)V

    .line 108
    iget-object v6, p0, Lcom/mdotm/android/http/HtmlTagFinder;->sourceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getResourceType(Ljava/lang/String;)I
    .locals 6
    .parameter "tagString"

    .prologue
    const/4 v5, 0x1

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/mdotm/android/http/HtmlTagFinder;->typePattern:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 117
    .local v1, sourcePattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 118
    .local v0, sourceMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "link found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    const-string v4, " 0th position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 121
    const-string v4, " 1st position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v3, "css"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    sget v3, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_CSS:I

    .line 134
    :goto_0
    return v3

    .line 125
    :cond_0
    const-string v3, "javascript"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    sget v3, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_JS:I

    goto :goto_0

    .line 127
    :cond_1
    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    sget v3, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_VIDEO:I

    goto :goto_0

    .line 129
    :cond_2
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    sget v3, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_AUDIO:I

    goto :goto_0

    .line 134
    :cond_3
    sget v3, Lcom/mdotm/android/http/HtmlProcessor;->RESOURCE_OTHER:I

    goto :goto_0
.end method

.method private getSourceValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "tagString"
    .parameter "sourceRegEx"

    .prologue
    const/4 v4, 0x1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSourceValue - tagString"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    const-string v3, " source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 141
    .local v1, sourcePattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 142
    .local v0, sourceMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "link found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    const-string v3, " 0th position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    const-string v3, " 1st position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHtmlTags(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "htmlPageString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/model/HtmlResourceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const-string v0, "Finding for anchor tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->anchorTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->hrefPattern:Ljava/lang/String;

    .line 46
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->RESOLVE_URL:I

    .line 45
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    const-string v0, "Finding for area tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->areaTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->hrefPattern:Ljava/lang/String;

    .line 50
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->RESOLVE_URL:I

    .line 49
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    const-string v0, "Finding for audio/video source  tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->audioVideoSourceRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->sourcePattern:Ljava/lang/String;

    .line 54
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    .line 53
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    const-string v0, "Finding for video open tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->videoOpenTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->videoPosterPattern:Ljava/lang/String;

    .line 58
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    .line 57
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    const-string v0, "Finding for embed tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->embedTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->sourcePattern:Ljava/lang/String;

    .line 62
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->RESOLVE_URL:I

    .line 61
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    const-string v0, "Finding for img tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->imgTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->sourcePattern:Ljava/lang/String;

    .line 66
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    .line 65
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    const-string v0, "Finding for link tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->linkTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->hrefPattern:Ljava/lang/String;

    .line 70
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    .line 69
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    const-string v0, "Finding for iframe tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->iFrameTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->sourcePattern:Ljava/lang/String;

    .line 74
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->RESOLVE_URL:I

    .line 73
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    const-string v0, "Finding for object tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->objectTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->objectDataPattern:Ljava/lang/String;

    .line 78
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    .line 77
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    const-string v0, "Finding for form tag"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->formTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->formActionPattern:Ljava/lang/String;

    .line 82
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->RESOLVE_URL:I

    .line 81
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->scriptTagRegEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->sourcePattern:Ljava/lang/String;

    .line 85
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    .line 84
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->cssImageUrlTagEx:Ljava/lang/String;

    iget-object v1, p0, Lcom/mdotm/android/http/HtmlTagFinder;->cssImageUrlPattern:Ljava/lang/String;

    .line 88
    sget v2, Lcom/mdotm/android/http/HtmlProcessor;->DOWNLOAD_RESOURCE:I

    .line 87
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mdotm/android/http/HtmlTagFinder;->findHtmlSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/mdotm/android/http/HtmlTagFinder;->sourceList:Ljava/util/ArrayList;

    return-object v0
.end method
