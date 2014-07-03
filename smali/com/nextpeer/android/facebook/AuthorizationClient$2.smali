.class Lcom/nextpeer/android/facebook/AuthorizationClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$2;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$2;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getStartActivityDelegate()Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$2;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getStartActivityDelegate()Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
