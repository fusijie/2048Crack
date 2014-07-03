.class Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;


# instance fields
.field final synthetic this$1:Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;

.field private final synthetic val$request:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler$1;->this$1:Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler$1;->val$request:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler$1;->this$1:Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler$1;->val$request:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0, v1, p1, p2}, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->onWebDialogComplete(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V

    return-void
.end method
