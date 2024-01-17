// Copyright 2022 ReWaffle LLC. All rights reserved.

using UnityEngine;
using UnityEngine.UI;
using Naninovel.Commands;
using System.Collections.Generic;
using System;

namespace Naninovel.UI
{
    /// <inheritdoc cref="IMovieUI"/>
    public class MovieUI : CustomUI, IMovieUI
    {
        private ICustomVariableManager variableManager;
        private IMoviePlayer moviePlayer;
        protected virtual RawImage MovieImage => movieImage;
        protected virtual RawImage FadeImage => fadeImage;

        [SerializeField] private RawImage movieImage;
        [SerializeField] private RawImage fadeImage;

        public virtual void SetMovieTexture (Texture texture)
        {
            MovieImage.texture = texture;
            MovieImage.SetOpacity(1);
        }

        private void Start()
        {
            moviePlayer = Engine.GetService<IMoviePlayer>();
        }
        protected override void Awake ()
        {
            base.Awake();

            this.AssertRequiredObjects(MovieImage, FadeImage);

            var config = Engine.GetConfiguration<MoviesConfiguration>();
            if (config.CustomFadeTexture)
                fadeImage.texture = config.CustomFadeTexture;
        }
        public void IsMoviePlaying()
        {
            if (moviePlayer.Playing)
            {
                Stop();
                // 영화가 재생 중인 경우
                Debug.Log("Movie is currently playing.");
            }
        }
        public bool IsPlayingMovie()
        {
            return moviePlayer.Playing;
        }
        protected override void HandleVisibilityChanged (bool visible)
        {
            base.HandleVisibilityChanged(visible);

            MovieImage.texture = null;
            MovieImage.SetOpacity(0);
        }
        public void Stop()
        {
            moviePlayer?.Stop();

        }
    }
}
