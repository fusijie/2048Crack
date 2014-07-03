.class public Lcom/mdotm/android/http/AdContentDownloader;
.super Ljava/lang/Object;
.source "AdContentDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "fileName"
    .parameter "isCacheEnabled"

    .prologue
    .line 611
    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, mainHtmlname:Ljava/lang/String;
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 613
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 614
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 615
    const-string v1, "?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 616
    if-nez p2, :cond_0

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    :cond_0
    return-object v0
.end method

.method private setMimeType(Ljava/lang/String;)I
    .locals 1
    .parameter "ext"

    .prologue
    .line 594
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    :cond_0
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    .line 605
    :goto_0
    return v0

    .line 597
    :cond_1
    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 598
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    :cond_2
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    goto :goto_0

    .line 600
    :cond_3
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 601
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->gifImageResource:I

    goto :goto_0

    .line 602
    :cond_4
    const-string v0, "webarchive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 603
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    goto :goto_0

    .line 605
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public downloadResources(Lcom/mdotm/android/vast/VastAd;Lcom/mdotm/android/model/MdotMAdResponse;ILandroid/content/Context;Z)V
    .locals 19
    .parameter "vastAd"
    .parameter "adResponse"
    .parameter "cacheLocation"
    .parameter "context"
    .parameter "isCacheEnabled"

    .prologue
    .line 33
    const/4 v11, 0x0

    .line 34
    .local v11, isVast:Z
    const/4 v2, 0x0

    .line 35
    .local v2, adResource:Lcom/mdotm/android/vast/AdResource;
    if-eqz p1, :cond_0

    .line 36
    const/4 v11, 0x1

    .line 39
    :cond_0
    const/4 v15, 0x0

    .line 40
    .local v15, resourceUrl:Ljava/lang/String;
    if-nez v11, :cond_5

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v15

    .line 71
    :cond_1
    :goto_0
    if-eqz v15, :cond_27

    const-string v17, "null"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_27

    .line 72
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_27

    .line 74
    move-object v7, v15

    .line 75
    .local v7, filename:Ljava/lang/String;
    :try_start_0
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, ext:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mdotm/android/http/AdContentDownloader;->setMimeType(Ljava/lang/String;)I

    move-result v14

    .line 82
    .local v14, resourceType:I
    if-eqz v11, :cond_6

    .line 85
    invoke-virtual {v2, v14}, Lcom/mdotm/android/vast/AdResource;->setResourceType(I)V

    .line 92
    :goto_1
    sget v17, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    move/from16 v0, v17

    if-eq v14, v0, :cond_2

    .line 93
    sget v17, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    move/from16 v0, v17

    if-eq v14, v0, :cond_2

    .line 94
    sget v17, Lcom/mdotm/android/http/MdotMNetworkManager;->gifImageResource:I

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 96
    :cond_2
    const-string v17, "image/video/gifimage resource"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v7, v1}, Lcom/mdotm/android/http/AdContentDownloader;->getFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 99
    if-eqz p3, :cond_9

    if-eqz p5, :cond_9

    .line 100
    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 101
    new-instance v4, Ljava/io/File;

    .line 102
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 103
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 104
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 105
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 106
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 102
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 101
    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, cacheDirectory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_3

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_3
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    .local v13, localFile:Ljava/io/File;
    :goto_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 296
    if-eqz v11, :cond_11

    if-eqz v2, :cond_11

    .line 298
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setUrl(Ljava/lang/String;)V

    .line 299
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v4           #cacheDirectory:Ljava/io/File;
    .end local v6           #ext:Ljava/lang/String;
    .end local v7           #filename:Ljava/lang/String;
    .end local v13           #localFile:Ljava/io/File;
    .end local v14           #resourceType:I
    :cond_4
    :goto_3
    return-void

    .line 43
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v16

    .line 44
    .local v16, vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 48
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual/range {v17 .. v17}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v3

    .line 50
    .local v3, adType:I
    packed-switch v3, :pswitch_data_0

    .line 61
    :goto_4
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Lcom/mdotm/android/vast/AdResource;->getDelivery()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 63
    invoke-virtual {v2}, Lcom/mdotm/android/vast/AdResource;->getUrl()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 52
    :pswitch_0
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mdotm/android/vast/LinearAd;

    .line 53
    .local v12, linearAd:Lcom/mdotm/android/vast/LinearAd;
    invoke-virtual {v12}, Lcom/mdotm/android/vast/LinearAd;->getAdResource()Lcom/mdotm/android/vast/AdResource;

    move-result-object v2

    .line 56
    goto :goto_4

    .line 87
    .end local v3           #adType:I
    .end local v12           #linearAd:Lcom/mdotm/android/vast/LinearAd;
    .end local v16           #vastAds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mdotm/android/vast/BaseVastAd;>;"
    .restart local v6       #ext:Ljava/lang/String;
    .restart local v7       #filename:Ljava/lang/String;
    .restart local v14       #resourceType:I
    :cond_6
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/mdotm/android/model/MdotMAdResponse;->setResourceType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 555
    .end local v6           #ext:Ljava/lang/String;
    .end local v14           #resourceType:I
    :catch_0
    move-exception v5

    .line 558
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 563
    if-eqz v11, :cond_26

    .line 565
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto :goto_3

    .line 127
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v6       #ext:Ljava/lang/String;
    .restart local v14       #resourceType:I
    :cond_7
    :try_start_2
    new-instance v4, Ljava/io/File;

    .line 128
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 129
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 130
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 131
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 132
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 128
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 127
    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v4       #cacheDirectory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_8

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_8
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .restart local v13       #localFile:Ljava/io/File;
    goto/16 :goto_2

    .line 153
    .end local v4           #cacheDirectory:Ljava/io/File;
    .end local v13           #localFile:Ljava/io/File;
    :cond_9
    const-string v17, "cache is not enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    if-nez v11, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/mdotm/android/model/MdotMAdResponse;->isRequestForBannerAd()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 164
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 166
    new-instance v4, Ljava/io/File;

    .line 167
    new-instance v17, Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    .line 169
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 171
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 172
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 173
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Banner_Temp:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 167
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 166
    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v4       #cacheDirectory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_a

    .line 175
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 195
    :cond_a
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .restart local v13       #localFile:Ljava/io/File;
    goto/16 :goto_2

    .line 197
    .end local v4           #cacheDirectory:Ljava/io/File;
    .end local v13           #localFile:Ljava/io/File;
    :cond_b
    new-instance v4, Ljava/io/File;

    .line 198
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 199
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 200
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 201
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 202
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Banner_Temp:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 198
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 197
    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v4       #cacheDirectory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_c

    .line 204
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 223
    :cond_c
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .restart local v13       #localFile:Ljava/io/File;
    goto/16 :goto_2

    .line 226
    .end local v4           #cacheDirectory:Ljava/io/File;
    .end local v13           #localFile:Ljava/io/File;
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 227
    new-instance v4, Ljava/io/File;

    .line 228
    new-instance v17, Ljava/lang/StringBuilder;

    .line 229
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    .line 230
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 232
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 233
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 234
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 228
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 227
    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v4       #cacheDirectory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_e

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 257
    :cond_e
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .restart local v13       #localFile:Ljava/io/File;
    goto/16 :goto_2

    .line 260
    .end local v4           #cacheDirectory:Ljava/io/File;
    .end local v13           #localFile:Ljava/io/File;
    :cond_f
    new-instance v4, Ljava/io/File;

    .line 261
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 262
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 263
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 264
    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 265
    sget-object v18, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 261
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 260
    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .restart local v4       #cacheDirectory:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_10

    .line 267
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 286
    :cond_10
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v13       #localFile:Ljava/io/File;
    goto/16 :goto_2

    .line 304
    :cond_11
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 305
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 308
    :cond_12
    if-eqz p5, :cond_13

    .line 311
    const-string v17, "cache does not exist"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-static/range {p4 .. p4}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v17

    .line 313
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromCacheTable(Ljava/lang/String;)V

    .line 315
    :cond_13
    const/4 v9, 0x0

    .line 316
    .local v9, in:Ljava/io/InputStream;
    if-eqz p5, :cond_1b

    .line 319
    new-instance v17, Lcom/mdotm/android/http/FileDownloader;

    invoke-direct/range {v17 .. v17}, Lcom/mdotm/android/http/FileDownloader;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v15}, Lcom/mdotm/android/http/FileDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 323
    if-nez v9, :cond_15

    .line 324
    const-string v17, "unable to download file"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    if-eqz v11, :cond_14

    .line 327
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    .line 328
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_3

    .line 336
    :cond_14
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 341
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 346
    :cond_15
    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 347
    invoke-virtual/range {p2 .. p2}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v17

    sget v18, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 348
    if-eqz v11, :cond_16

    .line 350
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 351
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 375
    :cond_16
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 379
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 386
    :cond_17
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 387
    new-instance v17, Lcom/mdotm/android/http/FileDownloader;

    invoke-direct/range {v17 .. v17}, Lcom/mdotm/android/http/FileDownloader;-><init>()V

    .line 388
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v13}, Lcom/mdotm/android/http/FileDownloader;->writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v10

    .line 389
    .local v10, isFilewrote:Z
    if-eqz v10, :cond_19

    .line 390
    if-eqz v11, :cond_18

    if-eqz v2, :cond_18

    .line 394
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 393
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setUrl(Ljava/lang/String;)V

    .line 395
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    .line 403
    :goto_5
    invoke-static/range {p4 .. p4}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v17

    .line 406
    const-string v18, "AdCache"

    .line 404
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->insertCache(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 399
    :cond_18
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 398
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 400
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto :goto_5

    .line 408
    :cond_19
    if-eqz v11, :cond_1a

    if-eqz v2, :cond_1a

    .line 410
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    .line 411
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_3

    .line 419
    :cond_1a
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 423
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 432
    .end local v10           #isFilewrote:Z
    :cond_1b
    if-eqz v11, :cond_1d

    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1c

    const/4 v8, 0x1

    .line 434
    .local v8, flag:Z
    :goto_6
    if-nez v8, :cond_24

    .line 435
    new-instance v17, Lcom/mdotm/android/http/FileDownloader;

    invoke-direct/range {v17 .. v17}, Lcom/mdotm/android/http/FileDownloader;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v15}, Lcom/mdotm/android/http/FileDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 441
    if-nez v9, :cond_20

    .line 445
    if-eqz v11, :cond_1f

    .line 447
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    .line 448
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_3

    .line 432
    .end local v8           #flag:Z
    :cond_1c
    const/4 v8, 0x0

    goto :goto_6

    .line 433
    :cond_1d
    sget v17, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    move/from16 v0, v17

    if-ne v14, v0, :cond_1e

    const/16 v17, 0x2

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e

    .line 432
    const/4 v8, 0x1

    goto :goto_6

    :cond_1e
    const/4 v8, 0x0

    goto :goto_6

    .line 456
    .restart local v8       #flag:Z
    :cond_1f
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 460
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 466
    :cond_20
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 467
    new-instance v17, Lcom/mdotm/android/http/FileDownloader;

    invoke-direct/range {v17 .. v17}, Lcom/mdotm/android/http/FileDownloader;-><init>()V

    .line 468
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v13}, Lcom/mdotm/android/http/FileDownloader;->writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v10

    .line 470
    .restart local v10       #isFilewrote:Z
    if-eqz v10, :cond_22

    .line 471
    if-eqz v11, :cond_21

    .line 475
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 474
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setUrl(Ljava/lang/String;)V

    .line 476
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 479
    :cond_21
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 478
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 485
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 488
    :cond_22
    if-eqz v11, :cond_23

    .line 490
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    .line 491
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_3

    .line 499
    :cond_23
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 503
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 516
    .end local v10           #isFilewrote:Z
    :cond_24
    if-eqz v11, :cond_25

    .line 518
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_3

    .line 523
    :cond_25
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 533
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 567
    .end local v4           #cacheDirectory:Ljava/io/File;
    .end local v6           #ext:Ljava/lang/String;
    .end local v8           #flag:Z
    .end local v9           #in:Ljava/io/InputStream;
    .end local v13           #localFile:Ljava/io/File;
    .end local v14           #resourceType:I
    .restart local v5       #e:Ljava/lang/Exception;
    :cond_26
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 569
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_3

    .line 576
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #filename:Ljava/lang/String;
    :cond_27
    if-eqz v11, :cond_28

    .line 577
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_3

    .line 579
    :cond_28
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    goto/16 :goto_3

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
