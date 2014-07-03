.class Lcom/mdotm/android/vast/VastInterstitialActivity$2;
.super Ljava/lang/Object;
.source "VastInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$2;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$2;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->onDismissScreen()V

    .line 254
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$2;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->finish()V

    .line 256
    return-void
.end method
