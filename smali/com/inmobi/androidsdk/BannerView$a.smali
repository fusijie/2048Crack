.class Lcom/inmobi/androidsdk/BannerView$a;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

.field final synthetic c:Lcom/inmobi/androidsdk/BannerView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    iput p2, p0, Lcom/inmobi/androidsdk/BannerView$a;->a:I

    iput-object p3, p0, Lcom/inmobi/androidsdk/BannerView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 795
    :try_start_0
    iget v0, p0, Lcom/inmobi/androidsdk/BannerView$a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 853
    const-string v0, "[InMobi]-[Network]-4.1.1"

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :goto_0
    return-void

    .line 798
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/BannerViewListener;->onAdRequestCompleted(Lcom/inmobi/androidsdk/BannerView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Exception giving callback to the publisher "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 802
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/inmobi/androidsdk/BannerView$c;->a:[I

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 823
    const-string v0, "[InMobi]-[Network]-4.1.1"

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView$a;->b:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerViewListener;->onAdRequestFailed(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 805
    :pswitch_2
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Ad click in progress. Your request cannot be processed at this time. Try again later."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 810
    :pswitch_3
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Ad download in progress. Your request cannot be processed at this time. Try again later."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 815
    :pswitch_4
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Ad request successful, but no ad was returned due to lack of ad inventory."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 819
    :pswitch_5
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Your App Id may be invalid or inactive. Please verify the app ID"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 833
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/BannerViewListener;->onDismissAdScreen(Lcom/inmobi/androidsdk/BannerView;)V

    goto :goto_0

    .line 837
    :pswitch_7
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/BannerViewListener;->onShowAdScreen(Lcom/inmobi/androidsdk/BannerView;)V

    goto :goto_0

    .line 841
    :pswitch_8
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/BannerViewListener;->onLeaveApplication(Lcom/inmobi/androidsdk/BannerView;)V

    goto :goto_0

    .line 845
    :pswitch_9
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/BannerViewListener;->onShowAdScreen(Lcom/inmobi/androidsdk/BannerView;)V

    goto/16 :goto_0

    .line 849
    :pswitch_a
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView$a;->c:Lcom/inmobi/androidsdk/BannerView;

    invoke-interface {v0, v1}, Lcom/inmobi/androidsdk/BannerViewListener;->onDismissAdScreen(Lcom/inmobi/androidsdk/BannerView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 795
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 802
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
