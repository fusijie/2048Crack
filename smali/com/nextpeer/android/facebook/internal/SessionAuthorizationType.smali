.class public final enum Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

.field public static final enum PUBLISH:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

.field public static final enum READ:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->READ:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    new-instance v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    const-string v1, "PUBLISH"

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    sget-object v1, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->READ:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->ENUM$VALUES:[Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
