.class Lcom/nextpeer/android/facebook/android/FbDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/android/FbDialog;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/android/FbDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/FbDialog$1;->this$0:Lcom/nextpeer/android/facebook/android/FbDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/FbDialog$1;->this$0:Lcom/nextpeer/android/facebook/android/FbDialog;

    #calls: Lcom/nextpeer/android/facebook/android/FbDialog;->callDialogListener(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V
    invoke-static {v0, p1, p2}, Lcom/nextpeer/android/facebook/android/FbDialog;->access$0(Lcom/nextpeer/android/facebook/android/FbDialog;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V

    return-void
.end method
