.class Lcom/nextpeer/android/facebook/LoginActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/LoginActivity$2;->this$0:Lcom/nextpeer/android/facebook/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundProcessingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/LoginActivity$2;->this$0:Lcom/nextpeer/android/facebook/LoginActivity;

    sget v1, Lcom/nextpeer/android/R$id;->np__facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBackgroundProcessingStopped()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/LoginActivity$2;->this$0:Lcom/nextpeer/android/facebook/LoginActivity;

    sget v1, Lcom/nextpeer/android/R$id;->np__facebook_login_activity_progress_bar:I

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
