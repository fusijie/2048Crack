.class public Lcom/nextpeer/android/facebook/FacebookDialogException;
.super Lcom/nextpeer/android/facebook/FacebookException;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:I

.field private failingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/nextpeer/android/facebook/FacebookDialogException;->errorCode:I

    iput-object p3, p0, Lcom/nextpeer/android/facebook/FacebookDialogException;->failingUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/facebook/FacebookDialogException;->errorCode:I

    return v0
.end method

.method public getFailingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookDialogException;->failingUrl:Ljava/lang/String;

    return-object v0
.end method
