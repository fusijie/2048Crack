.class public Lcom/inmobi/androidsdk/IMBrowserActivity;
.super Landroid/app/Activity;
.source "IMBrowserActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field public static final EXTRA_BROWSER_ACTIVITY_TYPE:Ljava/lang/String; = "extra_browser_type"

.field public static final EXTRA_BROWSER_STATUS_BAR:I = 0x65

.field public static final EXTRA_URL:Ljava/lang/String; = "extra_url"

.field public static final GET_IMAGE:I = 0x65

.field private static b:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

.field private static c:Landroid/os/Message;

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/re/controller/util/StartActivityForResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static i:I


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:F

.field private f:Ljava/lang/Boolean;

.field private g:Lcom/inmobi/re/container/CustomView;

.field private j:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Ljava/util/Map;

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 447
    new-instance v0, Lcom/inmobi/androidsdk/g;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/g;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 158
    .line 159
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 173
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 176
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :try_start_0
    invoke-virtual {p0, v3, p5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_1
    return-void

    .line 161
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 164
    :pswitch_1
    const-string v0, "com.google.android.apps.plus"

    goto :goto_0

    .line 167
    :pswitch_2
    const-string v0, "com.twitter.android"

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 186
    packed-switch p1, :pswitch_data_1

    :goto_2
    move-object v0, v1

    .line 212
    :goto_3
    if-eqz v0, :cond_0

    .line 213
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 216
    :try_start_1
    invoke-virtual {p0, v2, p5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 217
    :catch_1
    move-exception v0

    .line 218
    invoke-virtual {p0, p5, v5, v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 188
    :pswitch_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.facebook.com/dialog/feed?app_id=181821551957328&link="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&picture="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {p4, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&name=&description="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&redirect_uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 198
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://m.google.com/app/plus/x/?v=compose&content="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 202
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://twitter.com/home?status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_3

    .line 207
    :catch_2
    move-exception v0

    .line 208
    const-string v3, "[InMobi]-[RE]-4.1.1"

    const-string v4, "UTF-8 encoding not supported? What sorcery is this?"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 221
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    :try_start_3
    invoke-virtual {p0, v0, p5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 227
    :catch_3
    move-exception v0

    .line 228
    invoke-virtual {p0, p5, v5, v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 186
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 239
    const-string v1, "allDay"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 241
    const-string v1, "title"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "eventLocation"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    :try_start_0
    invoke-virtual {p0, v0, p7}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p7, v0, v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 14
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 251
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v1, "id"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 254
    const-string v1, "takeCameraPicture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    :try_start_0
    invoke-virtual {p0, v1, v5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {p0, v5, v3, v4}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 266
    :cond_1
    const-string v1, "getGalleryImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    :try_start_1
    invoke-virtual {p0, v0, v5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    .line 273
    invoke-virtual {p0, v5, v3, v4}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 277
    :cond_2
    const-string v1, "postToSocial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    const-string v0, "socialType"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "link"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "image"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 283
    :cond_3
    const-string v1, "createCalendarEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "start"

    invoke-virtual {p1, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v0, "end"

    invoke-virtual {p1, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, p0

    move v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(JJLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter

    .prologue
    .line 293
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 295
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 296
    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 297
    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$e;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$e;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    const v1, 0x108009a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 305
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 306
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v2

    const/high16 v3, 0x4230

    iget v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 309
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 310
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v2

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    const/high16 v2, 0x41c8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 318
    new-instance v2, Lcom/inmobi/re/container/CustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 320
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$c;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$c;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/re/container/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    new-instance v2, Lcom/inmobi/re/container/CustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->REFRESH:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 340
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$d;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$d;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/re/container/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 359
    new-instance v2, Lcom/inmobi/re/container/CustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->BACK:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 361
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$a;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$a;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/re/container/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 382
    new-instance v2, Lcom/inmobi/re/container/CustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    iput-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/re/container/CustomView;

    .line 384
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/re/container/CustomView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/re/container/CustomView;

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$b;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$b;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 403
    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/re/container/CustomView;

    return-object v0
.end method

.method public static generateId(Lcom/inmobi/re/controller/util/StartActivityForResultCallback;)I
    .locals 2
    .parameter

    .prologue
    .line 73
    sget v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:I

    .line 74
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Ljava/util/Map;

    sget v1, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:I

    return v0
.end method

.method public static requestOnAdDismiss(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Landroid/os/Message;

    .line 496
    return-void
.end method

.method public static setWebViewListener(Lcom/inmobi/re/container/IMWebView$IMWebViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 500
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/StartActivityForResultCallback;

    invoke-interface {v0, p2, p3}, Lcom/inmobi/re/controller/util/StartActivityForResultCallback;->onActivityResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->finish()V

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "onActivityResult failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->onOrientationEventChange()V

    .line 512
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 513
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v2, 0x400

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0, v6}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestWindowFeature(I)Z

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 107
    :cond_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 109
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 115
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/content/Intent;)V

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:F

    .line 118
    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string v2, "FIRST_INSTANCE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Ljava/lang/Boolean;

    .line 120
    const-string v2, "[InMobi]-[RE]-4.1.1"

    const-string v3, "IMBrowserActivity-> onCreate"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 123
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 124
    if-eqz v1, :cond_4

    .line 125
    const-string v2, "QAMODE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 126
    const/4 v0, 0x0

    .line 127
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    .line 128
    new-instance v3, Lcom/inmobi/re/container/IMWebView;

    sget-object v4, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v3, p0, v4, v6, v6}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    .line 130
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    const/4 v4, 0x2

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 135
    iget-object v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 136
    iget-object v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;)V

    .line 139
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 140
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Landroid/webkit/WebViewClient;

    invoke-virtual {v3, v4}, Lcom/inmobi/re/container/IMWebView;->setExternalWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 141
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 142
    iget-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 143
    if-eqz v2, :cond_3

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    const-string v2, "mk-carrier"

    const-string v3, "117.97.87.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "x-real-ip"

    const-string v3, "117.97.87.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_5

    .line 149
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2, v1, v0}, Lcom/inmobi/re/container/IMWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 154
    :cond_4
    return-void

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 431
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 432
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->releaseAllPlayers()V

    .line 436
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 439
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Exception in onDestroy "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 413
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 414
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 424
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 425
    return-void
.end method
