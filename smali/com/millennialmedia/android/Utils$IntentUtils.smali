.class Lcom/millennialmedia/android/Utils$IntentUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fixDataAndTypeForVideo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 157
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, lastPathSegment:Ljava/lang/String;
    const-string v2, "class"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".mkv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content.once"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .end local v1           #lastPathSegment:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static getIntentForUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)Landroid/content/Intent;
    .locals 13
    .parameter "listener"

    .prologue
    const/4 v10, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 174
    if-nez p0, :cond_1

    .line 175
    const/4 v5, 0x0

    .line 309
    :cond_0
    :goto_0
    return-object v5

    .line 176
    :cond_1
    const/4 v5, 0x0

    .line 177
    .local v5, intent:Landroid/content/Intent;
    const/4 v7, 0x0

    .line 179
    .local v7, scheme:Ljava/lang/String;
    iget-object v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    .line 180
    .local v4, destinationUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 181
    .local v3, context:Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 182
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 184
    const-string v8, "market"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 185
    const-string v8, "Utils"

    const-string v9, "Creating Android Market intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v8, "market"

    iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 301
    :cond_2
    :goto_1
    if-eqz v5, :cond_12

    .line 302
    const-string v8, "Utils"

    const-string v9, "%s resolved to Intent: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v11

    aput-object v5, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_3
    const-string v8, "rtsp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 191
    const-string v8, "Utils"

    const-string v9, "Creating streaming video player intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-class v8, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    const-string v8, "class"

    const-string v9, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 196
    :cond_4
    const-string v8, "tel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 198
    const-string v8, "Utils"

    const-string v9, "Creating telephone intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.DIAL"

    invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v8, "tel"

    iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 203
    :cond_5
    const-string v8, "sms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 205
    const-string v8, "Utils"

    const-string v9, "Creating txt message intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, address:Ljava/lang/String;
    const-string v8, "?body="

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 209
    .local v2, bodyIndex:I
    if-eq v2, v10, :cond_6

    .line 210
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_6
    const/16 v8, 0x2c

    const/16 v9, 0x3b

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v8, "address"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    if-eq v2, v10, :cond_7

    .line 214
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, body:Ljava/lang/String;
    add-int/lit8 v8, v2, 0x6

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v8, "sms_body"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    .end local v1           #body:Ljava/lang/String;
    :cond_7
    const-string v8, "vnd.android-dir/mms-sms"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v8, "sms"

    iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 223
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #bodyIndex:I
    :cond_8
    const-string v8, "mailto"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 224
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v8, "email"

    iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 228
    :cond_9
    const-string v8, "geo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 229
    const-string v8, "Utils"

    const-string v9, "Creating Google Maps intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v8, "geo"

    iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 234
    :cond_a
    const-string v8, "https"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 236
    const-string v8, "Utils"

    const-string v9, "Creating launch browser intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v8, "browser"

    iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 241
    :cond_b
    const-string v8, "mmbrowser"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 242
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, mmBrowserUrl:Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 249
    const-string v8, "://"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 250
    const-string v8, "//"

    const-string v9, "://"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 254
    :cond_c
    const-string v8, "Utils"

    const-string v9, "MMBrowser - Creating launch browser intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v8, "browser"

    iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 261
    .end local v6           #mmBrowserUrl:Ljava/lang/String;
    :cond_d
    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 262
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".mp4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".3gp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 266
    :cond_e
    const-string v8, "Utils"

    const-string v9, "Creating video player intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-class v8, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 269
    const-string v8, "class"

    const-string v9, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v8, "streamingVideo"

    iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 277
    :cond_f
    invoke-virtual {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->canOpenOverlay()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 278
    const-string v8, "Utils"

    const-string v9, "Creating launch overlay intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-class v8, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v8, "class"

    const-class v9, Lcom/millennialmedia/android/AdViewOverlayActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 285
    :cond_10
    const-string v8, "Utils"

    const-string v9, "Creating launch browser intent."

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v8, "browser"

    iget-wide v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v8, v9, v10}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 290
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 294
    :cond_11
    const-string v8, "Utils"

    const-string v9, "Creating intent for unrecognized URI. %s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 305
    :cond_12
    const-string v8, "Utils"

    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static startActionView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "nextUrl"

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    .local v0, actionIntent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 146
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    :cond_0
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->fixDataAndTypeForVideo(Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void
.end method

.method static startAdViewOverlayActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method static startAdViewOverlayActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "extrasAddedIntent"

    .prologue
    .line 108
    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method static startAdViewOverlayActivityWithData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method static startCachedVideoPlayerActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "extrasAddedIntent"

    .prologue
    .line 125
    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.CachedVideoPlayerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method static startPickerActivity(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "file"
    .parameter "type"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.BridgeMMMedia$PickerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "dataUri"

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .parameter "context"
    .parameter "file"

    .prologue
    .line 71
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V

    .line 72
    return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "data"

    .prologue
    .line 66
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V

    .line 67
    return-void
.end method
