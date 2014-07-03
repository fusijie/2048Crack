.class public Lcom/mdotm/android/vast/VastXmlParser;
.super Ljava/lang/Object;
.source "VastXmlParser.java"


# instance fields
.field public final EVENT_COMPLETE:Ljava/lang/String;

.field public final EVENT_FIRST_QUARTILE:Ljava/lang/String;

.field public final EVENT_MID_POINT:Ljava/lang/String;

.field public final EVENT_MUTE:Ljava/lang/String;

.field public final EVENT_PAUSE:Ljava/lang/String;

.field public final EVENT_RESUME:Ljava/lang/String;

.field public final EVENT_START:Ljava/lang/String;

.field public final EVENT_THIRD_QUARTILE:Ljava/lang/String;

.field public final EVENT_UNMUTE:Ljava/lang/String;

.field public final MEDIA_DELIVERY_TYPE_PROGRESSIVE:Ljava/lang/String;

.field public final MEDIA_DELIVERY_TYPE_STREAM:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field public final TAG_AD:Ljava/lang/String;

.field public final TAG_AD_TITLE:Ljava/lang/String;

.field public final TAG_CLICK_THROUGH:Ljava/lang/String;

.field public final TAG_CREATIVE:Ljava/lang/String;

.field public final TAG_CREATIVES:Ljava/lang/String;

.field public final TAG_DELIVERY:Ljava/lang/String;

.field public final TAG_DESCRIPTION:Ljava/lang/String;

.field public final TAG_DURATION:Ljava/lang/String;

.field public final TAG_ERROR:Ljava/lang/String;

.field public final TAG_EVENT:Ljava/lang/String;

.field public final TAG_ID:Ljava/lang/String;

.field public final TAG_IMPRESSION:Ljava/lang/String;

.field public final TAG_IN_LINE:Ljava/lang/String;

.field public final TAG_LINEAR:Ljava/lang/String;

.field public final TAG_MEDIA_FILE:Ljava/lang/String;

.field public final TAG_MEDIA_FILES:Ljava/lang/String;

.field public final TAG_TRACKING:Ljava/lang/String;

.field public final TAG_TRACKING_EVENTS:Ljava/lang/String;

.field public final TAG_TYPE:Ljava/lang/String;

.field public final TAG_VALUE_VIDEO_MP4:Ljava/lang/String;

.field public final TAG_VALUE_VIDEO_MPEG:Ljava/lang/String;

.field public final TAG_VIDEO_CLICKS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "SampleXMLParser"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "Ad"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_AD:Ljava/lang/String;

    .line 23
    const-string v0, "id"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ID:Ljava/lang/String;

    .line 24
    const-string v0, "AdTitle"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_AD_TITLE:Ljava/lang/String;

    .line 25
    const-string v0, "Description"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_DESCRIPTION:Ljava/lang/String;

    .line 26
    const-string v0, "InLine"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_IN_LINE:Ljava/lang/String;

    .line 27
    const-string v0, "Error"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ERROR:Ljava/lang/String;

    .line 28
    const-string v0, "Impression"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_IMPRESSION:Ljava/lang/String;

    .line 29
    const-string v0, "Creatives"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_CREATIVES:Ljava/lang/String;

    .line 30
    const-string v0, "Creative"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_CREATIVE:Ljava/lang/String;

    .line 31
    const-string v0, "Linear"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_LINEAR:Ljava/lang/String;

    .line 32
    const-string v0, "Duration"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_DURATION:Ljava/lang/String;

    .line 33
    const-string v0, "TrackingEvents"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_TRACKING_EVENTS:Ljava/lang/String;

    .line 34
    const-string v0, "Tracking"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_TRACKING:Ljava/lang/String;

    .line 35
    const-string v0, "event"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_EVENT:Ljava/lang/String;

    .line 36
    const-string v0, "VideoClicks"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_VIDEO_CLICKS:Ljava/lang/String;

    .line 37
    const-string v0, "ClickThrough"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_CLICK_THROUGH:Ljava/lang/String;

    .line 38
    const-string v0, "MediaFiles"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_MEDIA_FILES:Ljava/lang/String;

    .line 39
    const-string v0, "MediaFile"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_MEDIA_FILE:Ljava/lang/String;

    .line 40
    const-string v0, "type"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_TYPE:Ljava/lang/String;

    .line 41
    const-string v0, "video/mp4"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_VALUE_VIDEO_MP4:Ljava/lang/String;

    .line 42
    const-string v0, "video/mpeg"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_VALUE_VIDEO_MPEG:Ljava/lang/String;

    .line 43
    const-string v0, "delivery"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_DELIVERY:Ljava/lang/String;

    .line 45
    const-string v0, "start"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_START:Ljava/lang/String;

    .line 46
    const-string v0, "firstQuartile"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_FIRST_QUARTILE:Ljava/lang/String;

    .line 47
    const-string v0, "midpoint"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_MID_POINT:Ljava/lang/String;

    .line 48
    const-string v0, "thirdQuartile"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_THIRD_QUARTILE:Ljava/lang/String;

    .line 49
    const-string v0, "mute"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_MUTE:Ljava/lang/String;

    .line 50
    const-string v0, "unmute"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_UNMUTE:Ljava/lang/String;

    .line 51
    const-string v0, "pause"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_PAUSE:Ljava/lang/String;

    .line 52
    const-string v0, "resume"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_RESUME:Ljava/lang/String;

    .line 53
    const-string v0, "complete"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_COMPLETE:Ljava/lang/String;

    .line 55
    const-string v0, "progressive"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->MEDIA_DELIVERY_TYPE_PROGRESSIVE:Ljava/lang/String;

    .line 56
    const-string v0, "stream"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->MEDIA_DELIVERY_TYPE_STREAM:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private getMediaDeliveryType(Lorg/w3c/dom/Node;)I
    .locals 3
    .parameter "nodeMediaDelivery"

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, type:I
    const-string v1, "progressive"

    .line 338
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 338
    if-eqz v1, :cond_1

    .line 339
    const/4 v0, 0x1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    const-string v1, "stream"

    .line 341
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private parseNodeChildren(Lcom/mdotm/android/vast/VastAd;Lorg/w3c/dom/Node;)V
    .locals 34
    .parameter "vastAd"
    .parameter "nodeAdChild"

    .prologue
    .line 113
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 114
    .local v19, nodeListInLineChild:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_0
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-lt v5, v0, :cond_0

    .line 293
    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, " child parsing done"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    return-void

    .line 115
    :cond_0
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 116
    .local v15, nodeInLineChild:Lorg/w3c/dom/Node;
    const-string v32, "AdTitle"

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 117
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/mdotm/android/vast/VastAd;->adTitle:Ljava/lang/String;

    .line 114
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const-string v32, "Description"

    .line 120
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 119
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 120
    if-eqz v32, :cond_3

    .line 121
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 123
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    .line 124
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v32

    .line 123
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/mdotm/android/vast/VastAd;->description:Ljava/lang/String;

    goto :goto_1

    .line 126
    :cond_3
    const-string v32, "Error"

    .line 127
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 128
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/w3c/dom/CharacterData;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 130
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 129
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 131
    .local v2, charData:Lorg/w3c/dom/CharacterData;
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, error:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mdotm/android/vast/VastAd;->error:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    .end local v2           #charData:Lorg/w3c/dom/CharacterData;
    .end local v3           #error:Ljava/lang/String;
    :cond_4
    const-string v32, "Impression"

    .line 137
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 136
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 137
    if-eqz v32, :cond_5

    .line 138
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/w3c/dom/CharacterData;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 140
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 139
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 141
    .restart local v2       #charData:Lorg/w3c/dom/CharacterData;
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, impression:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    .end local v2           #charData:Lorg/w3c/dom/CharacterData;
    .end local v4           #impression:Ljava/lang/String;
    :cond_5
    const-string v32, "Creatives"

    .line 147
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 146
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 147
    if-eqz v32, :cond_1

    .line 149
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 150
    .local v18, nodeListCreativesChild:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, l:I
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-ge v6, v0, :cond_1

    .line 151
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 152
    .local v13, nodeCreative:Lorg/w3c/dom/Node;
    const-string v32, "Creative"

    .line 153
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 152
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 153
    if-eqz v32, :cond_6

    .line 155
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 156
    .local v17, nodeListCreativeChild:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, m:I
    :goto_3
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-lt v9, v0, :cond_7

    .line 150
    .end local v9           #m:I
    .end local v17           #nodeListCreativeChild:Lorg/w3c/dom/NodeList;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 158
    .restart local v9       #m:I
    .restart local v17       #nodeListCreativeChild:Lorg/w3c/dom/NodeList;
    :cond_7
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 159
    .local v14, nodeCreativeChild:Lorg/w3c/dom/Node;
    const-string v32, "Linear"

    .line 160
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 159
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 160
    if-eqz v32, :cond_8

    .line 161
    new-instance v7, Lcom/mdotm/android/vast/LinearAd;

    invoke-direct {v7}, Lcom/mdotm/android/vast/LinearAd;-><init>()V

    .line 162
    .local v7, linearAd:Lcom/mdotm/android/vast/LinearAd;
    const/16 v32, 0x1

    move/from16 v0, v32

    iput v0, v7, Lcom/mdotm/android/vast/LinearAd;->adType:I

    .line 165
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 166
    .local v20, nodeListLinearChild:Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .line 167
    .local v12, n:I
    :goto_4
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 166
    move/from16 v0, v32

    if-lt v12, v0, :cond_9

    .line 284
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v7           #linearAd:Lcom/mdotm/android/vast/LinearAd;
    .end local v12           #n:I
    .end local v20           #nodeListLinearChild:Lorg/w3c/dom/NodeList;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 169
    .restart local v7       #linearAd:Lcom/mdotm/android/vast/LinearAd;
    .restart local v12       #n:I
    .restart local v20       #nodeListLinearChild:Lorg/w3c/dom/NodeList;
    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 170
    .local v16, nodeLinearChild:Lorg/w3c/dom/Node;
    const-string v32, "Duration"

    .line 172
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 171
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 172
    if-eqz v32, :cond_b

    .line 174
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v32

    .line 173
    move-object/from16 v0, v32

    iput-object v0, v7, Lcom/mdotm/android/vast/LinearAd;->duration:Ljava/lang/String;

    .line 167
    :cond_a
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 177
    :cond_b
    const-string v32, "TrackingEvents"

    .line 179
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 178
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 179
    if-eqz v32, :cond_e

    .line 181
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 182
    .local v22, nodeListTrackingEventsChild:Lorg/w3c/dom/NodeList;
    new-instance v8, Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    invoke-direct {v8}, Lcom/mdotm/android/vast/LinearAdTrackingEvents;-><init>()V

    .line 183
    .local v8, linearAdTrackingEvent:Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    const/16 v30, 0x0

    .line 184
    .local v30, o:I
    :goto_6
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 183
    move/from16 v0, v30

    move/from16 v1, v32

    if-lt v0, v1, :cond_c

    .line 196
    invoke-virtual {v7, v8}, Lcom/mdotm/android/vast/LinearAd;->setTrackingEvents(Lcom/mdotm/android/vast/LinearAdTrackingEvents;)V

    goto :goto_5

    .line 186
    :cond_c
    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 187
    .local v28, nodeTrackingEventsChild:Lorg/w3c/dom/Node;
    const-string v32, "Tracking"

    .line 189
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 188
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 189
    if-eqz v32, :cond_d

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v8}, Lcom/mdotm/android/vast/VastXmlParser;->setLinearTrackingEvent(Lorg/w3c/dom/Node;Lcom/mdotm/android/vast/LinearAdTrackingEvents;)V

    .line 184
    :cond_d
    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    .line 197
    .end local v8           #linearAdTrackingEvent:Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    .end local v22           #nodeListTrackingEventsChild:Lorg/w3c/dom/NodeList;
    .end local v28           #nodeTrackingEventsChild:Lorg/w3c/dom/Node;
    .end local v30           #o:I
    :cond_e
    const-string v32, "VideoClicks"

    .line 199
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 198
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 199
    if-eqz v32, :cond_10

    .line 201
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 202
    .local v23, nodeListVideoClicksChild:Lorg/w3c/dom/NodeList;
    const/16 v30, 0x0

    .line 203
    .restart local v30       #o:I
    :goto_7
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 202
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    .line 205
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    .line 206
    .local v29, nodeVideoClicksChild:Lorg/w3c/dom/Node;
    const-string v32, "ClickThrough"

    .line 208
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 207
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 208
    if-eqz v32, :cond_f

    .line 210
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    .line 209
    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/w3c/dom/CharacterData;

    move/from16 v32, v0

    .line 210
    if-eqz v32, :cond_f

    .line 212
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 211
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 214
    .restart local v2       #charData:Lorg/w3c/dom/CharacterData;
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v31

    .line 215
    .local v31, rawData:Ljava/lang/String;
    iget-object v0, v7, Lcom/mdotm/android/vast/LinearAd;->videoClicks:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    .line 216
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v2           #charData:Lorg/w3c/dom/CharacterData;
    .end local v31           #rawData:Ljava/lang/String;
    :cond_f
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    .line 225
    .end local v23           #nodeListVideoClicksChild:Lorg/w3c/dom/NodeList;
    .end local v29           #nodeVideoClicksChild:Lorg/w3c/dom/Node;
    .end local v30           #o:I
    :cond_10
    const-string v32, "MediaFiles"

    .line 227
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 226
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 227
    if-eqz v32, :cond_a

    .line 231
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 232
    .local v21, nodeListMediaFilesChild:Lorg/w3c/dom/NodeList;
    const/16 v30, 0x0

    .line 233
    .restart local v30       #o:I
    :goto_8
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 232
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    .line 235
    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    .line 236
    .local v27, nodeMediaListFiles:Lorg/w3c/dom/Node;
    const-string v32, "MediaFile"

    .line 238
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v33

    .line 237
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 238
    if-eqz v32, :cond_12

    .line 242
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v24

    .line 244
    .local v24, nodeMapMediaFileAttributes:Lorg/w3c/dom/NamedNodeMap;
    const-string v32, "type"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v26

    .line 249
    .local v26, nodeMediaFileType:Lorg/w3c/dom/Node;
    const-string v32, "video/mp4"

    .line 251
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v33

    .line 250
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 251
    if-nez v32, :cond_11

    const-string v32, "video/mpeg"

    .line 253
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v33

    .line 252
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    .line 253
    if-eqz v32, :cond_12

    .line 258
    :cond_11
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v32

    .line 257
    move-object/from16 v0, v32

    instance-of v0, v0, Lorg/w3c/dom/CharacterData;

    move/from16 v32, v0

    .line 258
    if-eqz v32, :cond_12

    .line 263
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 262
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 265
    .restart local v2       #charData:Lorg/w3c/dom/CharacterData;
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v32

    .line 266
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 268
    .restart local v31       #rawData:Ljava/lang/String;
    const-string v32, "delivery"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v25

    .line 269
    .local v25, nodeMediaDelivery:Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/mdotm/android/vast/VastXmlParser;->getMediaDeliveryType(Lorg/w3c/dom/Node;)I

    move-result v10

    .line 270
    .local v10, mediaDeliveryType:I
    new-instance v11, Lcom/mdotm/android/vast/AdResource;

    invoke-direct {v11}, Lcom/mdotm/android/vast/AdResource;-><init>()V

    .line 271
    .local v11, mediaFile:Lcom/mdotm/android/vast/AdResource;
    iput v10, v11, Lcom/mdotm/android/vast/AdResource;->delivery:I

    .line 272
    move-object/from16 v0, v31

    iput-object v0, v11, Lcom/mdotm/android/vast/AdResource;->url:Ljava/lang/String;

    .line 273
    iput-object v11, v7, Lcom/mdotm/android/vast/LinearAd;->adResource:Lcom/mdotm/android/vast/AdResource;

    .line 233
    .end local v2           #charData:Lorg/w3c/dom/CharacterData;
    .end local v10           #mediaDeliveryType:I
    .end local v11           #mediaFile:Lcom/mdotm/android/vast/AdResource;
    .end local v24           #nodeMapMediaFileAttributes:Lorg/w3c/dom/NamedNodeMap;
    .end local v25           #nodeMediaDelivery:Lorg/w3c/dom/Node;
    .end local v26           #nodeMediaFileType:Lorg/w3c/dom/Node;
    .end local v31           #rawData:Ljava/lang/String;
    :cond_12
    add-int/lit8 v30, v30, 0x1

    goto :goto_8
.end method

.method private setLinearTrackingEvent(Lorg/w3c/dom/Node;Lcom/mdotm/android/vast/LinearAdTrackingEvents;)V
    .locals 6
    .parameter "nodeTrackingEventsChild"
    .parameter "linearAdTrackingEvent"

    .prologue
    .line 299
    .line 300
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 302
    .local v3, nodeMapTrackingEventsAttributes:Lorg/w3c/dom/NamedNodeMap;
    const-string v5, "event"

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 303
    .local v2, nodeEvent:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, event:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    instance-of v5, v5, Lorg/w3c/dom/CharacterData;

    if-eqz v5, :cond_0

    .line 306
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 305
    check-cast v0, Lorg/w3c/dom/CharacterData;

    .line 307
    .local v0, charData:Lorg/w3c/dom/CharacterData;
    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, rawData:Ljava/lang/String;
    const-string v5, "start"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    iget-object v5, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->start:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v0           #charData:Lorg/w3c/dom/CharacterData;
    .end local v4           #rawData:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 311
    .restart local v0       #charData:Lorg/w3c/dom/CharacterData;
    .restart local v4       #rawData:Ljava/lang/String;
    :cond_1
    const-string v5, "firstQuartile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    iget-object v5, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->firstQuartile:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_2
    const-string v5, "midpoint"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    iget-object v5, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->midPoint:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_3
    const-string v5, "thirdQuartile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 316
    iget-object v5, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->thirdQuartile:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_4
    const-string v5, "complete"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 318
    iget-object v5, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->complete:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_5
    const-string v5, "mute"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 321
    iget-object v5, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->mute:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_6
    const-string v5, "unmute"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 324
    iget-object v5, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->unMute:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_7
    const-string v5, "pause"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 327
    iget-object v5, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->pause:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_8
    const-string v5, "resume"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    iget-object v5, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->resume:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public parseResponse(Ljava/lang/String;)Lcom/mdotm/android/vast/VastAd;
    .locals 14
    .parameter "response"

    .prologue
    .line 60
    new-instance v10, Lcom/mdotm/android/vast/VastAd;

    invoke-direct {v10}, Lcom/mdotm/android/vast/VastAd;-><init>()V

    .line 61
    .local v10, vastAd:Lcom/mdotm/android/vast/VastAd;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 62
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 108
    :cond_1
    :goto_0
    return-object v10

    .line 65
    :cond_2
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 68
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 69
    .local v2, documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 71
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 73
    .local v1, documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v11, Lorg/xml/sax/InputSource;

    .line 74
    new-instance v12, Ljava/io/ByteArrayInputStream;

    const-string v13, "utf-8"

    invoke-virtual {p1, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 73
    invoke-virtual {v1, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 76
    .local v0, document:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Element;->normalize()V

    .line 77
    const-string v11, "Ad"

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 79
    .local v8, nodeListAd:Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_1

    .line 81
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 82
    invoke-interface {v8, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 83
    .local v6, nodeAd:Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 84
    .local v9, nodeListAdChild:Lorg/w3c/dom/NodeList;
    if-eqz v9, :cond_3

    .line 85
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_3

    .line 86
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lt v5, v11, :cond_4

    .line 81
    .end local v5           #j:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 87
    .restart local v5       #j:I
    :cond_4
    invoke-interface {v9, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 88
    .local v7, nodeAdChild:Lorg/w3c/dom/Node;
    const-string v11, "InLine"

    .line 89
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 88
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 89
    if-eqz v11, :cond_5

    .line 90
    invoke-direct {p0, v10, v7}, Lcom/mdotm/android/vast/VastXmlParser;->parseNodeChildren(Lcom/mdotm/android/vast/VastAd;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 97
    .end local v0           #document:Lorg/w3c/dom/Document;
    .end local v1           #documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #nodeAd:Lorg/w3c/dom/Node;
    .end local v7           #nodeAdChild:Lorg/w3c/dom/Node;
    .end local v8           #nodeListAd:Lorg/w3c/dom/NodeList;
    .end local v9           #nodeListAdChild:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v3

    .line 98
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 99
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 101
    .local v3, e:Lorg/xml/sax/SAXException;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 102
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 103
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 104
    .local v3, e:Ljava/io/IOException;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 105
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
