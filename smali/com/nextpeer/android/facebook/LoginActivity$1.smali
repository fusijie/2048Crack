.class Lcom/nextpeer/android/facebook/LoginActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/LoginActivity$1;->this$0:Lcom/nextpeer/android/facebook/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/LoginActivity$1;->this$0:Lcom/nextpeer/android/facebook/LoginActivity;

    #calls: Lcom/nextpeer/android/facebook/LoginActivity;->onAuthClientCompleted(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    invoke-static {v0, p1}, Lcom/nextpeer/android/facebook/LoginActivity;->access$0(Lcom/nextpeer/android/facebook/LoginActivity;Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    return-void
.end method
