.class public Lcom/nextpeer/android/facebook/FacebookServiceException;
.super Lcom/nextpeer/android/facebook/FacebookException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final error:Lcom/nextpeer/android/facebook/FacebookRequestError;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/facebook/FacebookRequestError;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nextpeer/android/facebook/FacebookServiceException;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    return-void
.end method


# virtual methods
.method public final getRequestError()Lcom/nextpeer/android/facebook/FacebookRequestError;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/FacebookServiceException;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{FacebookServiceException: httpResponseCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/FacebookServiceException;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getRequestStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", facebookErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/FacebookServiceException;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", facebookErrorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/FacebookServiceException;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/FacebookServiceException;->error:Lcom/nextpeer/android/facebook/FacebookRequestError;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
