.class Lcom/inmobi/androidsdk/InterstitialView$a;
.super Ljava/lang/Object;
.source "InterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

.field final synthetic c:Lcom/inmobi/androidsdk/InterstitialView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    iput p2, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->a:I

    iput-object p3, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 518
    iget v0, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 560
    const-string v0, "[InMobi]-[Network]-4.1.1"

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_0
    return-void

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/InterstitialViewListener;->onAdRequestLoaded(Lcom/inmobi/androidsdk/InterstitialView;)V

    goto :goto_0

    .line 526
    :pswitch_1
    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$b;->a:[I

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 536
    const-string v0, "[InMobi]-[Network]-4.1.1"

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialViewListener;->onAdRequestFailed(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 528
    :pswitch_2
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Ad click in progress. Your request cannot be processed at this time. Try again later."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 532
    :pswitch_3
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Ad download in progress. Your request cannot be processed at this time. Try again later."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 545
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/InterstitialViewListener;->onDismissAdScreen(Lcom/inmobi/androidsdk/InterstitialView;)V

    goto :goto_0

    .line 550
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/InterstitialViewListener;->onShowAdScreen(Lcom/inmobi/androidsdk/InterstitialView;)V

    goto :goto_0

    .line 555
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView$a;->c:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/InterstitialViewListener;->onLeaveApplication(Lcom/inmobi/androidsdk/InterstitialView;)V

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 526
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
