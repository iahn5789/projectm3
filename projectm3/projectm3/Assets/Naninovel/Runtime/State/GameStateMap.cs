// Copyright 2022 ReWaffle LLC. All rights reserved.

using System;
using System.Globalization;
using UnityEngine;

namespace Naninovel
{
    /// <summary>
    /// Represents serializable session-specific state of the engine services and related data (aka saved game status).
    /// </summary>
    [Serializable]
    public class GameStateMap : StateMap
    {
        /// <summary>
        /// State of <see cref="IScriptPlayer.PlaybackSpot"/> at the time snapshot was taken;
        /// expected to be set by the player service on serialization.
        /// </summary>
        public PlaybackSpot PlaybackSpot { get => playbackSpot; set => playbackSpot = value; }
        /// <summary>
        /// Date and time when the snapshot was taken.
        /// </summary>
        public DateTime SaveDateTime { get; set; }
        /// <summary>
        /// Week when the snapshot was taken.
        /// </summary>
        public String Week { get; set; }
        /// <summary>
        /// WeekTitle when the snapshot was taken.
        /// </summary>
        public String WeekTitle { get; set; }
        /// <summary>
        /// Selected value.
        /// </summary>
        public String Selected { get; set; }
        /// <summary>
        /// Preview of the screen when the snapshot was taken.
        /// </summary>
        public Sprite Thumbnail { get; set; }
        /// <summary>
        /// Whether player is allowed rolling back to this snapshot; see remarks for more info.
        /// </summary>
        /// <remarks>
        /// Player expects rollback to occur between the points where he's interacted with the game to progress it further
        /// (clicked a printer to continue reading, picked up a choice, etc). This flag can be set before mutating game state 
        /// after a meaningful player interaction to indicate that the snapshot can be used when handling "rollback" input.
        /// </remarks>
        public bool PlayerRollbackAllowed { get => playerRollbackAllowed; set => playerRollbackAllowed = value; }
        /// <summary>
        /// Whether this snapshot should always be serialized when saving the game,
        /// no matter if <see cref="PlayerRollbackAllowed"/>.
        /// </summary>
        public bool ForcedSerialize { get => forcedSerialize; set => forcedSerialize = value; }
        /// <summary>
        /// JSON representation of the rollback stack when the snapshot was taken.
        /// </summary>
        public string RollbackStackJson { get => rollbackStackJson; set => rollbackStackJson = value; }

        private const string dateTimeFormat = "yyyy-MM-dd HH:mm:ss";

        [SerializeField] private PlaybackSpot playbackSpot;
        [SerializeField] private bool playerRollbackAllowed;
        [SerializeField] private bool forcedSerialize;
        [SerializeField] private string saveDateTime;
        [SerializeField] private string week;
        [SerializeField] private string weekTitle;
        [SerializeField] private string selected;
        [SerializeField] private string thumbnailBase64;
        [SerializeField] private string rollbackStackJson;

        public override void OnBeforeSerialize ()
        {
            base.OnBeforeSerialize();

            saveDateTime = SaveDateTime.ToString(dateTimeFormat, CultureInfo.InvariantCulture);
            week = Week;
            weekTitle = WeekTitle;
            selected = Selected;

            if (Thumbnail != null)
            {
                // Sprite를 Texture2D로 변환
                Texture2D texture = Thumbnail.texture;
                // Texture2D를 JPG 이미지로 인코딩하여 Base64로 변환
                thumbnailBase64 = Convert.ToBase64String(texture.EncodeToJPG());
            }
            else
            {
                thumbnailBase64 = null;
            }
        }

        public override void OnAfterDeserialize ()
        {
            base.OnAfterDeserialize();

            SaveDateTime = string.IsNullOrEmpty(saveDateTime) ? DateTime.MinValue : DateTime.ParseExact(saveDateTime, dateTimeFormat, CultureInfo.InvariantCulture);
            Week = string.IsNullOrEmpty(week) ? "" : week;
            WeekTitle = string.IsNullOrEmpty(weekTitle) ? "" : weekTitle;
            Selected = string.IsNullOrEmpty(selected) ? null : selected;
            Thumbnail = string.IsNullOrEmpty(thumbnailBase64) ? null : GetSpriteFromBase64();
        }

        /// <summary>
        /// Allows this state snapshot to be used for player-driven state rollback.
        /// </summary>
        public void AllowPlayerRollback () => playerRollbackAllowed = true;

        /// <summary>
        /// Forces the snapshot to be serialized, regardless of <see cref="PlayerRollbackAllowed"/>.
        /// </summary>
        public void ForceSerialize () => forcedSerialize = true;

        private Texture2D GetThumbnail ()
        {
            var tex = new Texture2D(2, 2);
            tex.wrapMode = TextureWrapMode.Clamp;
            tex.LoadImage(Convert.FromBase64String(thumbnailBase64));
            return tex;
        }
        public Sprite GetSpriteFromBase64()
        {
            if (string.IsNullOrEmpty(thumbnailBase64))
                return null;

            byte[] imageBytes = Convert.FromBase64String(thumbnailBase64);
            Texture2D texture = new Texture2D(2, 2); // Texture2D 생성
            texture.wrapMode = TextureWrapMode.Clamp;
            texture.LoadImage(imageBytes); // Base64 문자열을 Texture2D로 변환
            Sprite sprite = Sprite.Create(texture, new Rect(0, 0, texture.width, texture.height), Vector2.one * 0.5f);
            return sprite; // Texture2D를 Sprite로 변환하여 반환
        }


    }
}
