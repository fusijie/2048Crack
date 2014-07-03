.class Lcom/nextpeer/android/facebook/widget/WebDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/widget/WebDialog;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/widget/WebDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$2;->this$0:Lcom/nextpeer/android/facebook/widget/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$2;->this$0:Lcom/nextpeer/android/facebook/widget/WebDialog;

    #calls: Lcom/nextpeer/android/facebook/widget/WebDialog;->sendCancelToListener()V
    invoke-static {v0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->access$1(Lcom/nextpeer/android/facebook/widget/WebDialog;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/widget/WebDialog$2;->this$0:Lcom/nextpeer/android/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->dismiss()V

    return-void
.end method
